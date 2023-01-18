#![no_std]

elrond_wasm::imports!();

use elrond_wasm::types::heap::String;

#[elrond_wasm::contract]
pub trait BuySell {

    #[init]
    fn init(&self, token_identifier: OptionalValue<EgldOrEsdtTokenIdentifier>) {
        let token_id = match token_identifier {
            OptionalValue::Some(t) => t,
            OptionalValue::None => EgldOrEsdtTokenIdentifier::egld(),
        };
        self.block_token_id().set(token_id);
    }


    /**
     * Any address can send an nft, from the collection accepted by this contract.
     * The nft will be sold by bid_apartment method when 2 addresses will bid
     */
    #[endpoint]
    #[payable("*")]
    fn send_nft(&self,
        end_timestamp: u64,
        max_allowed_participants: u16,
    ) {
        let caller: ManagedAddress = self.blockchain().get_caller();

        require!(self.bid_nft().is_empty() == true, "We need to complete previous bid(sell previous nft) before to send another nft for biding");

        self.end_timestamp().set(end_timestamp);
        self.max_allowed_participants().set(max_allowed_participants);


        let nft: EsdtTokenPayment = self.call_value().single_esdt();
        let (_, _, amount) = nft.clone().into_tuple();

        require!(amount == 1, "NFT amount should be 1");

        self.bid_nft().set(nft);
        self.nft_sender().set(caller);
    }

    /**
    * Allow 2 addresses to fight for a nft.
    * The address with the highest egld sent will win
    */

    #[view(getRegisteringTax)]
    #[storage_mapper("registering_tax")]
    fn registering_tax(&self) -> SingleValueMapper<BigUint>;

    #[view(getEndTime)]
    #[storage_mapper("end_timestamp")]
    fn end_timestamp(&self) -> SingleValueMapper<u64>;


    #[view(getMaxAllowedParticipants)]
    #[storage_mapper("max_allowed_participants")]
    fn max_allowed_participants(&self) -> SingleValueMapper<u16>;

    #[view(getParticipantAddrByName)]
    #[storage_mapper("participant_addr_by_name")]
    fn participant_addr_by_name(&self, participant_name: &String) -> SingleValueMapper<ManagedAddress>;

    #[view(getParticipantInfo)]
    #[storage_mapper("participants")]
    fn participants(&self, participant_addr: &ManagedAddress) -> SingleValueMapper<String>;

    #[view(getParticipants)]
    #[storage_mapper("participant_list")]
    fn participant_list(&self) -> UnorderedSetMapper<ManagedAddress>;

    #[view(getBidders)]
    #[storage_mapper("bidders_list")]
    fn bidders_list(&self) -> UnorderedSetMapper<ManagedAddress>;

    #[view(getBidderInfo)]
    #[storage_mapper("bid_by_address")]
    fn bid_by_address(&self, participant_addr: &ManagedAddress) -> SingleValueMapper<BigUint>;

    #[view(getBlockTokenIdentifier)]
    #[storage_mapper("tokenIdentifier")]
    fn block_token_id(&self) -> SingleValueMapper<EgldOrEsdtTokenIdentifier>;

    #[view(getBidNft)]
    #[storage_mapper("bigNft")]
    fn bid_nft(&self) -> SingleValueMapper<EsdtTokenPayment>;

    #[view(getNftSender)]
    #[storage_mapper("nftSender")]
    fn nft_sender(&self) -> SingleValueMapper<ManagedAddress>;


    #[endpoint]
    #[payable("EGLD")]
    fn bid_participant(
        &self
    ) {
        require!(self.blockchain().get_block_timestamp() <= self.end_timestamp().get(), "
                You can't bid. Current bid has already ended. Wait for a new bid to start");

        let caller_addr = self.blockchain().get_caller();
        let caller_bid: BigUint = self.call_value().egld_value().clone();

        require!(self.participant_list().contains(&caller_addr), "User should be registered to be able to bid");
        require!(!self.bidders_list().contains(&caller_addr), "User already has a bid on this action");

        self.bid_by_address(&caller_addr).set(&caller_bid);
        self.bidders_list().insert(caller_addr);
    }

    #[endpoint]
    #[only_owner]
    fn transfer_nft(&self) {
        let bidder_binding =  self.bidders_list();
        let bidders_iter = bidder_binding.iter();
        let nft_sender = self.nft_sender().get();
        let mut winner_addr = self.blockchain().get_owner_address();

        let mut max_bid : BigUint = BigUint::zero();

        for bidder in bidders_iter {
            let current_bid = self.bid_by_address(&bidder).get();
            if current_bid > max_bid {
                winner_addr = bidder;
                max_bid = current_bid;
            }
        }

        let (token, token_nonce, amount) = self.call_value().single_esdt().into_tuple();


        let bidders_iter = bidder_binding.iter();
        for bidder in bidders_iter {
            let current_bid = self.bid_by_address(&bidder).get();
            if bidder != winner_addr {
                self.send().direct_egld(&bidder, &current_bid);
            }
            self.bid_by_address(&bidder).clear();
        }

        require!(amount == 1, "NFT amount should be 1");
        self.send().direct_esdt(&winner_addr, &token, token_nonce, &amount);
        self.send().direct_egld(&nft_sender, &max_bid);
        self.bid_nft().clear();
        self.bidders_list().clear();
        self.participant_list().clear();

    }

    #[endpoint]
    #[payable("EGLD")]
    fn register_participant(
    	&self, participant_name: String,
    	) {

        require!(!self.bid_nft().is_empty(), "We need someone to sell an digipet before buying");

    	let caller_addr = self.blockchain().get_caller();

        require!(!self.participant_list().contains(&caller_addr),
                "Participant already registered");

        let participant = participant_name.clone();

        //perform insertion
        self.participants(&caller_addr).set(&participant);
        self.participant_addr_by_name(&participant).set(&caller_addr);
        self.participant_list().insert(caller_addr);
    }


}