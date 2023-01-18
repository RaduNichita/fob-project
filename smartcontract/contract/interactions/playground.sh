#!/bin/bash

PROXY="https://devnet-gateway.elrond.com"
CHAIN="D"

ISSUE_ADDRESS="erd1qqqqqqqqqqqqqqqpqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqzllls8a5w6u"

WALLET_ADDRESS="erd1y63k7cgj5j8usgmev6zztng8eeymf8tvcyux6pve43wyaamcu37qekzfru" # Change if you want to use other user
WALLET_PATH="~/fob-project/wallets/wallet.pem" # Change if you want to use other user

OWNER_WALLET_ADDRESS="erd1y63k7cgj5j8usgmev6zztng8eeymf8tvcyux6pve43wyaamcu37qekzfru"
OWNER_WALLET_PATH="~/fob-project/wallets/wallet.pem" # Change if you want to use other user

ALICE_WALLET_ADDRESS=
_WALLET_PATH=


SMART_CONTRACT_ADDRESS="erd1qqqqqqqqqqqqqpgqc6n95pm3rauxmwjllzktcdw2v96u3kr9u37qdkctcz"

NFT_TOKEN_NAME="RaduMaraCristi"
NFT_TOKEN_TICKER="RMC"
NFT_TOKEN_TICKER_IDENTIFIER="ce2cc0" # You need to change this

NFT_NAME="DigiPet"
NFT_ATTRIBUTES="tags:happy,quiet,paceful"
NFT_URL="www.google.com"

AUCTION_DURATION=500 # in seconds
AUCTION_MAX_PARTICIPANTS=0x5

function create_wallet() {
	erdpy wallet new --pem --output-path $1.pem
}

function convert_to_hex_helper() {
	echo -n $1 | hexdump -ve '/1 "%02x"'
}

function convert_to_hex() {
	echo "0x"$(convert_to_hex_helper $1)
}

function convert_contract_address_to_hex() {
	echo "0x"$(erdpy wallet bech32 --decode $1)
}

function get_token_identifier() {
	echo -n "${NFT_TOKEN_TICKER}-${NFT_TOKEN_TICKER_IDENTIFIER}"
}

function issue_nft() {

	nft_token_name_encoded=$(convert_to_hex $NFT_TOKEN_NAME)
	nft_token_ticker_encoded=$(convert_to_hex $NFT_TOKEN_TICKER)

	erdpy contract call $ISSUE_ADDRESS \
		--function "issueNonFungible" \
		--pem $WALLET_PATH \
		--gas-limit 100000000 \
		--recall-nonce \
		--arguments $nft_token_name_encoded $nft_token_ticker_encoded \
		--chain $CHAIN \
		--value 50000000000000000 \
		--proxy $PROXY \
		--send
}

function set_role_nft() {

	role="ESDTRoleNFTCreate"
	address_encoded=$(convert_contract_address_to_hex $WALLET_ADDRESS)
	create_role_encoded=$(convert_to_hex $role)
	get_token_identifier_encoded=$(convert_to_hex $(get_token_identifier))

	erdpy contract call $ISSUE_ADDRESS \
		--function "setSpecialRole" \
		--pem $WALLET_PATH \
		--gas-limit 100000000 \
		--recall-nonce \
		--arguments $get_token_identifier_encoded $address_encoded $create_role_encoded \
		--chain $CHAIN \
		--value 0 \
		--proxy=$PROXY \
		--send
}

function create_nft() {

	token_identifier_encoded=$(convert_to_hex $(get_token_identifier))
	initial_quantity=0x1
	nft_name_encoded=$(convert_to_hex $NFT_NAME)
	royalties=0x1d4c # TODO
	nft_hash=0x0 # TODO
	nft_attributes_encoded=$(convert_to_hex $NFT_ATTRIBUTES)
	nft_url_encoded=$(convert_to_hex $NFT_URL)

	erdpy contract call $WALLET_ADDRESS \
	--function "ESDTNFTCreate" \
	--pem $WALLET_PATH \
	--gas-limit=10000000 \
	--recall-nonce \
	--arguments $token_identifier_encoded $initial_quantity $nft_name_encoded $royalties $nft_hash $nft_attributes_encoded $nft_url_encoded \
	--chain $CHAIN \
	--proxy $PROXY \
	--send
}

function transfer_nft_to_smart_contract() {

	token_identifier_encoded=$(convert_to_hex $(get_token_identifier))
	token_nonce=$1
	amount=0x1
	smart_contract_address_encoded=$(convert_contract_address_to_hex $SMART_CONTRACT_ADDRESS)
	method_name="send_nft"
	method_name_encoded=$(convert_to_hex $method_name)

	now=$(date +%s)


	# argument in plain
	argument1=$(printf '%x' $(echo $now + $AUCTION_DURATION | bc))
	argument2=$(printf '%x' $AUCTION_MAX_PARTICIPANTS)

	#argument encoded
	argument1_encoded=$(convert_to_hex $argument1)
	argument2_encoded=$(convert_to_hex $argument2)


	erdpy contract call $WALLET_ADDRESS \
	--function "ESDTNFTTransfer" \
	--pem $WALLET_PATH \
	--gas-limit=10000000 \
 	--recall-nonce \
	--arguments $token_identifier_encoded $token_nonce $amount $smart_contract_address_encoded $method_name_encoded $argument1_encoded $argument2_encoded \
	--chain $CHAIN \
	--proxy $PROXY \
	--send
}

# first parameter - path to user_wallet
# second_parameter - user name
function register_participant() {
	participant_name_encoded=$(convert_to_hex $2)

	erdpy contract call $SMART_CONTRACT_ADDRESS \
	--function "register_participant" \
	--pem $1 \
	--gas-limit=10000000 \
	--recall-nonce \
	--arguments $participant_name_encoded \
	--chain $CHAIN \
	--proxy $PROXY \
	--send
}

# first parameter - path to user_wallet
# second parameter - amount to bid
function bid_participant() {

	erdpy contract call $SMART_CONTRACT_ADDRESS \
	--function "bid_participant" \
	--pem $1\
	--gas-limit=10000000 \
	--recall-nonce \
	--value $2 \
	--chain $CHAIN \
	--proxy $PROXY \
	--send
}

# only owner
function transfer_nft() {
	erdpy contract call $SMART_CONTRACT_ADDRESS \
	--function "transfer_nft" \
	--pem $WALLET_PATH \
	--gas-limit=10000000 \
	--recall-nonce \
	--chain $CHAIN \
	--proxy $PROXY \
	--send
}

# issue_nft
# set_role_nft
# create_nft
# transfer_nft_to_smart_contract 1
# register_participant $1 $2
# bid_participant $1 $2
# transfer_nft