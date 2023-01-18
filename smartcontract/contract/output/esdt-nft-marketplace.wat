(module
  (type (;0;) (func (param i32 i32) (result i32)))
  (type (;1;) (func))
  (type (;2;) (func (param i32) (result i32)))
  (type (;3;) (func (param i32 i32)))
  (type (;4;) (func (param i32)))
  (type (;5;) (func (result i32)))
  (type (;6;) (func (param i32 i32 i32)))
  (type (;7;) (func (param i32 i32 i32 i32)))
  (type (;8;) (func (param i32 i32 i32) (result i32)))
  (type (;9;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;10;) (func (param i32 i64)))
  (type (;11;) (func (param i32 i32 i64 i32 i32) (result i32)))
  (type (;12;) (func (param i32) (result i64)))
  (type (;13;) (func (param i32 i32 i32 i32 i32) (result i32)))
  (type (;14;) (func (result i64)))
  (type (;15;) (func (param i64)))
  (type (;16;) (func (param i32 i32 i32 i32 i32)))
  (type (;17;) (func (param i32 i32) (result i64)))
  (type (;18;) (func (param i64 i32)))
  (import "env" "bigIntSetInt64" (func (;0;) (type 10)))
  (import "env" "bigIntAdd" (func (;1;) (type 6)))
  (import "env" "signalError" (func (;2;) (type 3)))
  (import "env" "mBufferNew" (func (;3;) (type 5)))
  (import "env" "mBufferAppend" (func (;4;) (type 0)))
  (import "env" "managedTransferValueExecute" (func (;5;) (type 11)))
  (import "env" "managedCaller" (func (;6;) (type 4)))
  (import "env" "managedOwnerAddress" (func (;7;) (type 4)))
  (import "env" "managedGetMultiESDTCallValue" (func (;8;) (type 4)))
  (import "env" "mBufferGetLength" (func (;9;) (type 2)))
  (import "env" "mBufferAppendBytes" (func (;10;) (type 8)))
  (import "env" "managedSignalError" (func (;11;) (type 4)))
  (import "env" "getNumESDTTransfers" (func (;12;) (type 5)))
  (import "env" "getArgumentLength" (func (;13;) (type 2)))
  (import "env" "getArgument" (func (;14;) (type 0)))
  (import "env" "smallIntGetUnsignedArgument" (func (;15;) (type 12)))
  (import "env" "getNumArguments" (func (;16;) (type 5)))
  (import "env" "mBufferFinish" (func (;17;) (type 2)))
  (import "env" "bigIntFinishUnsigned" (func (;18;) (type 4)))
  (import "env" "mBufferCopyByteSlice" (func (;19;) (type 9)))
  (import "env" "mBufferSetBytes" (func (;20;) (type 8)))
  (import "env" "mBufferFromBigIntUnsigned" (func (;21;) (type 0)))
  (import "env" "mBufferToBigIntUnsigned" (func (;22;) (type 0)))
  (import "env" "mBufferStorageLoad" (func (;23;) (type 0)))
  (import "env" "mBufferStorageStore" (func (;24;) (type 0)))
  (import "env" "finish" (func (;25;) (type 3)))
  (import "env" "mBufferGetArgument" (func (;26;) (type 0)))
  (import "env" "bigIntCmp" (func (;27;) (type 0)))
  (import "env" "managedMultiTransferESDTNFTExecute" (func (;28;) (type 11)))
  (import "env" "mBufferEq" (func (;29;) (type 0)))
  (import "env" "checkNoPayment" (func (;30;) (type 1)))
  (import "env" "getBlockTimestamp" (func (;31;) (type 14)))
  (import "env" "bigIntGetCallValue" (func (;32;) (type 4)))
  (import "env" "smallIntFinishUnsigned" (func (;33;) (type 15)))
  (import "env" "mBufferGetBytes" (func (;34;) (type 0)))
  (import "env" "storageLoadLength" (func (;35;) (type 0)))
  (import "env" "storageLoad" (func (;36;) (type 8)))
  (import "env" "mBufferGetByteSlice" (func (;37;) (type 9)))
  (func (;38;) (type 2) (param i32) (result i32)
    (local i32)
    call 39
    local.tee 1
    i64.const 0
    call 0
    local.get 1
    local.get 1
    local.get 0
    call 1
    local.get 1)
  (func (;39;) (type 5) (result i32)
    (local i32)
    i32.const 1049760
    i32.const 1049760
    i32.load
    i32.const 1
    i32.sub
    local.tee 0
    i32.store
    local.get 0)
  (func (;40;) (type 16) (param i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 1
      local.get 2
      i32.le_u
      if  ;; label = @2
        local.get 2
        local.get 4
        i32.le_u
        br_if 1 (;@1;)
        call 41
        unreachable
      end
      call 41
      unreachable
    end
    local.get 0
    local.get 2
    local.get 1
    i32.sub
    i32.store offset=4
    local.get 0
    local.get 1
    local.get 3
    i32.add
    i32.store)
  (func (;41;) (type 1)
    call 50
    unreachable)
  (func (;42;) (type 2) (param i32) (result i32)
    (local i32)
    call 3
    local.tee 1
    local.get 0
    call 4
    drop
    local.get 1)
  (func (;43;) (type 3) (param i32 i32)
    local.get 0
    local.get 1
    call 2
    unreachable)
  (func (;44;) (type 3) (param i32 i32)
    local.get 0
    local.get 1
    i64.const 0
    call 45
    call 45
    call 5
    drop)
  (func (;45;) (type 5) (result i32)
    (local i32)
    call 39
    local.tee 0
    i32.const 1049712
    i32.const 0
    call 20
    drop
    local.get 0)
  (func (;46;) (type 5) (result i32)
    (local i32)
    call 39
    local.tee 0
    call 6
    local.get 0)
  (func (;47;) (type 5) (result i32)
    (local i32)
    call 39
    local.tee 0
    call 7
    local.get 0)
  (func (;48;) (type 4) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    i32.const -21
    local.set 3
    block  ;; label = @1
      i32.const 1059780
      i32.load8_u
      local.tee 1
      if  ;; label = @2
        i32.const -21
        i32.const 2147483647
        local.get 1
        select
        local.set 3
        br 1 (;@1;)
      end
      i32.const 1059780
      i32.const 1
      i32.store8
      i32.const -21
      call 8
    end
    block  ;; label = @1
      local.get 3
      call 9
      i32.const -16
      i32.and
      i32.const 16
      i32.eq
      if  ;; label = @2
        i32.const 0
        local.set 1
        local.get 3
        call 9
        local.set 6
        local.get 2
        i32.const 8
        i32.add
        local.set 7
        i32.const 1
        local.set 4
        loop  ;; label = @3
          local.get 1
          i32.const 16
          i32.add
          local.tee 8
          local.get 6
          i32.gt_u
          br_if 2 (;@1;)
          local.get 7
          i64.const 0
          i64.store
          local.get 2
          i64.const 0
          i64.store
          local.get 3
          local.get 1
          local.get 2
          i32.const 16
          call 49
          drop
          local.get 4
          if  ;; label = @4
            local.get 2
            i64.load offset=4 align=4
            local.tee 11
            i64.const 56
            i64.shl
            local.get 11
            i64.const 40
            i64.shl
            i64.const 71776119061217280
            i64.and
            i64.or
            local.get 11
            i64.const 24
            i64.shl
            i64.const 280375465082880
            i64.and
            local.get 11
            i64.const 8
            i64.shl
            i64.const 1095216660480
            i64.and
            i64.or
            i64.or
            local.get 11
            i64.const 8
            i64.shr_u
            i64.const 4278190080
            i64.and
            local.get 11
            i64.const 24
            i64.shr_u
            i64.const 16711680
            i64.and
            i64.or
            local.get 11
            i64.const 40
            i64.shr_u
            i64.const 65280
            i64.and
            local.get 11
            i64.const 56
            i64.shr_u
            i64.or
            i64.or
            i64.or
            local.set 11
            local.get 2
            i32.load
            local.tee 1
            i32.const 24
            i32.shl
            local.get 1
            i32.const 8
            i32.shl
            i32.const 16711680
            i32.and
            i32.or
            local.get 1
            i32.const 8
            i32.shr_u
            i32.const 65280
            i32.and
            local.get 1
            i32.const 24
            i32.shr_u
            i32.or
            i32.or
            local.set 9
            local.get 2
            i32.load offset=12
            local.tee 1
            i32.const 24
            i32.shl
            local.get 1
            i32.const 8
            i32.shl
            i32.const 16711680
            i32.and
            i32.or
            local.get 1
            i32.const 8
            i32.shr_u
            i32.const 65280
            i32.and
            local.get 1
            i32.const 24
            i32.shr_u
            i32.or
            i32.or
            local.set 10
            i32.const 1
            local.set 5
            i32.const 0
            local.set 4
            local.get 8
            local.set 1
            br 1 (;@3;)
          end
        end
        call 50
        unreachable
      end
      i32.const 1048612
      i32.const 34
      call 2
      unreachable
    end
    local.get 0
    local.get 10
    i32.store offset=12
    local.get 0
    local.get 9
    i32.store offset=8
    local.get 0
    local.get 11
    i64.store
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;49;) (type 9) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 3
    local.get 2
    call 37
    i32.const 0
    i32.ne)
  (func (;50;) (type 1)
    call 139
    unreachable)
  (func (;51;) (type 7) (param i32 i32 i32 i32)
    (local i32)
    i32.const 1048646
    i32.const 23
    call 52
    local.tee 4
    local.get 0
    local.get 1
    call 10
    drop
    local.get 4
    i32.const 1048669
    i32.const 3
    call 10
    drop
    local.get 4
    local.get 2
    local.get 3
    call 10
    drop
    local.get 4
    call 11
    unreachable)
  (func (;52;) (type 0) (param i32 i32) (result i32)
    (local i32)
    call 39
    local.tee 2
    local.get 0
    local.get 1
    call 20
    drop
    local.get 2)
  (func (;53;) (type 1)
    call 12
    i32.eqz
    if  ;; label = @1
      return
    end
    i32.const 1048672
    i32.const 37
    call 2
    unreachable)
  (func (;54;) (type 2) (param i32) (result i32)
    local.get 0
    call 39
    local.tee 0
    call 26
    drop
    local.get 0)
  (func (;55;) (type 2) (param i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    block (result i32)  ;; label = @1
      local.get 0
      call 9
      i32.const 4
      i32.eq
      if  ;; label = @2
        local.get 1
        i32.const 0
        i32.store offset=12
        local.get 0
        i32.const 0
        local.get 1
        i32.const 12
        i32.add
        i32.const 4
        call 49
        drop
        i32.const 2147483646
        local.get 1
        i32.load offset=12
        i32.const 1145849669
        i32.eq
        br_if 1 (;@1;)
        drop
      end
      local.get 0
    end
    local.get 1
    i32.const 16
    i32.add
    global.set 0)
  (func (;56;) (type 4) (param i32)
    (local i32 i32 i32 i32 i64)
    global.get 0
    i32.const -64
    i32.add
    local.tee 1
    global.set 0
    local.get 1
    i32.const 0
    call 13
    local.tee 3
    call 57
    local.get 1
    i32.load offset=4
    local.set 4
    local.get 1
    i32.load
    local.set 2
    local.get 3
    if  ;; label = @1
      i32.const 0
      local.get 2
      call 14
      drop
    end
    local.get 1
    i32.const 8
    i32.add
    local.get 2
    local.get 4
    call 58
    local.get 1
    i32.const 56
    i32.add
    local.tee 2
    local.get 1
    i32.const 16
    i32.add
    i32.load
    i32.store
    local.get 1
    local.get 1
    i64.load offset=8
    i64.store offset=48
    local.get 1
    i32.const 24
    i32.add
    local.get 1
    i32.const 48
    i32.add
    call 59
    local.get 1
    i32.load8_u offset=40
    i32.const 2
    i32.ne
    if  ;; label = @1
      i32.const 1048926
      i32.const 16
      i32.const 1048813
      i32.const 18
      call 51
      unreachable
    end
    local.get 2
    local.get 1
    i32.const 32
    i32.add
    i32.load
    local.tee 2
    i32.store
    local.get 1
    local.get 1
    i64.load offset=24
    local.tee 5
    i64.store offset=48
    local.get 0
    i32.const 8
    i32.add
    local.get 2
    i32.store
    local.get 0
    local.get 5
    i64.store align=4
    local.get 1
    i32.const -64
    i32.sub
    global.set 0)
  (func (;57;) (type 3) (param i32 i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 1
    i32.const 0
    i32.lt_s
    if  ;; label = @1
      call 50
      unreachable
    end
    local.get 1
    call 134
    local.set 3
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    local.get 3
    i32.store
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;58;) (type 6) (param i32 i32 i32)
    block  ;; label = @1
      local.get 2
      i32.eqz
      if  ;; label = @2
        local.get 0
        i32.const 1
        i32.store
        local.get 1
        i32.const 0
        call 105
        br 1 (;@1;)
      end
      local.get 0
      local.get 1
      i32.store
    end
    local.get 0
    local.get 2
    i32.store offset=8
    local.get 0
    local.get 2
    i32.store offset=4)
  (func (;59;) (type 3) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 1
      i32.load offset=8
      local.tee 4
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      local.get 4
      i32.const 7
      i32.sub
      local.tee 2
      local.get 2
      local.get 4
      i32.gt_u
      select
      local.set 9
      local.get 1
      i32.load
      local.tee 5
      i32.const 3
      i32.add
      i32.const -4
      i32.and
      local.get 5
      i32.sub
      local.set 10
      loop  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 3
                          local.get 5
                          i32.add
                          i32.load8_u
                          local.tee 8
                          i32.const 24
                          i32.shl
                          i32.const 24
                          i32.shr_s
                          local.tee 6
                          i32.const 0
                          i32.ge_s
                          if  ;; label = @12
                            local.get 10
                            local.get 3
                            i32.sub
                            i32.const 3
                            i32.and
                            local.get 10
                            i32.const -1
                            i32.eq
                            i32.or
                            br_if 1 (;@11;)
                            local.get 3
                            local.get 9
                            i32.lt_u
                            br_if 2 (;@10;)
                            br 8 (;@4;)
                          end
                          i32.const 256
                          local.set 7
                          i32.const 1
                          local.set 2
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      local.get 8
                                      i32.const 1049424
                                      i32.add
                                      i32.load8_u
                                      i32.const 2
                                      i32.sub
                                      br_table 0 (;@17;) 1 (;@16;) 2 (;@15;) 12 (;@5;)
                                    end
                                    local.get 3
                                    i32.const 1
                                    i32.add
                                    local.tee 6
                                    local.get 4
                                    i32.lt_u
                                    br_if 3 (;@13;)
                                    br 9 (;@7;)
                                  end
                                  local.get 3
                                  i32.const 1
                                  i32.add
                                  local.tee 2
                                  local.get 4
                                  i32.lt_u
                                  br_if 1 (;@14;)
                                  br 9 (;@6;)
                                end
                                local.get 3
                                i32.const 1
                                i32.add
                                local.tee 2
                                local.get 4
                                i32.ge_u
                                br_if 8 (;@6;)
                                local.get 2
                                local.get 5
                                i32.add
                                i32.load8_s
                                local.set 2
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        local.get 8
                                        i32.const 240
                                        i32.sub
                                        br_table 1 (;@17;) 0 (;@18;) 0 (;@18;) 0 (;@18;) 2 (;@16;) 0 (;@18;)
                                      end
                                      local.get 6
                                      i32.const 15
                                      i32.add
                                      i32.const 255
                                      i32.and
                                      i32.const 2
                                      i32.gt_u
                                      local.get 2
                                      i32.const 0
                                      i32.ge_s
                                      i32.or
                                      local.get 2
                                      i32.const -64
                                      i32.ge_u
                                      i32.or
                                      br_if 9 (;@8;)
                                      br 2 (;@15;)
                                    end
                                    local.get 2
                                    i32.const 112
                                    i32.add
                                    i32.const 255
                                    i32.and
                                    i32.const 48
                                    i32.ge_u
                                    br_if 8 (;@8;)
                                    br 1 (;@15;)
                                  end
                                  local.get 2
                                  i32.const -113
                                  i32.gt_s
                                  br_if 7 (;@8;)
                                end
                                i32.const 0
                                local.set 7
                                local.get 3
                                i32.const 2
                                i32.add
                                local.tee 2
                                local.get 4
                                i32.ge_u
                                br_if 8 (;@6;)
                                local.get 2
                                local.get 5
                                i32.add
                                i32.load8_s
                                i32.const -65
                                i32.gt_s
                                br_if 5 (;@9;)
                                i32.const 0
                                local.set 2
                                local.get 3
                                i32.const 3
                                i32.add
                                local.tee 6
                                local.get 4
                                i32.ge_u
                                br_if 9 (;@5;)
                                local.get 5
                                local.get 6
                                i32.add
                                i32.load8_s
                                i32.const -65
                                i32.le_s
                                br_if 2 (;@12;)
                                i32.const 768
                                local.set 7
                                br 6 (;@8;)
                              end
                              local.get 2
                              local.get 5
                              i32.add
                              i32.load8_s
                              local.set 2
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    local.get 8
                                    i32.const 224
                                    i32.ne
                                    if  ;; label = @17
                                      local.get 8
                                      i32.const 237
                                      i32.eq
                                      br_if 1 (;@16;)
                                      local.get 6
                                      i32.const 31
                                      i32.add
                                      i32.const 255
                                      i32.and
                                      i32.const 12
                                      i32.lt_u
                                      br_if 2 (;@15;)
                                      local.get 6
                                      i32.const -2
                                      i32.and
                                      i32.const -18
                                      i32.ne
                                      local.get 2
                                      i32.const 0
                                      i32.ge_s
                                      i32.or
                                      local.get 2
                                      i32.const -64
                                      i32.ge_u
                                      i32.or
                                      br_if 9 (;@8;)
                                      br 3 (;@14;)
                                    end
                                    local.get 2
                                    i32.const -32
                                    i32.and
                                    i32.const -96
                                    i32.ne
                                    br_if 8 (;@8;)
                                    br 2 (;@14;)
                                  end
                                  local.get 2
                                  i32.const -96
                                  i32.ge_s
                                  br_if 7 (;@8;)
                                  br 1 (;@14;)
                                end
                                local.get 2
                                i32.const -65
                                i32.gt_s
                                br_if 6 (;@8;)
                              end
                              local.get 3
                              i32.const 2
                              i32.add
                              local.tee 6
                              local.get 4
                              i32.ge_u
                              br_if 6 (;@7;)
                              local.get 5
                              local.get 6
                              i32.add
                              i32.load8_s
                              i32.const -65
                              i32.gt_s
                              br_if 4 (;@9;)
                              br 1 (;@12;)
                            end
                            local.get 5
                            local.get 6
                            i32.add
                            i32.load8_s
                            i32.const -65
                            i32.gt_s
                            br_if 7 (;@5;)
                          end
                          local.get 6
                          i32.const 1
                          i32.add
                          local.set 3
                          br 8 (;@3;)
                        end
                        local.get 3
                        i32.const 1
                        i32.add
                        local.set 3
                        br 7 (;@3;)
                      end
                      loop  ;; label = @10
                        local.get 3
                        local.get 5
                        i32.add
                        local.tee 2
                        i32.load
                        i32.const -2139062144
                        i32.and
                        br_if 6 (;@4;)
                        local.get 2
                        i32.const 4
                        i32.add
                        i32.load
                        i32.const -2139062144
                        i32.and
                        br_if 6 (;@4;)
                        local.get 9
                        local.get 3
                        i32.const 8
                        i32.add
                        local.tee 3
                        i32.gt_u
                        br_if 0 (;@10;)
                      end
                      br 5 (;@4;)
                    end
                    i32.const 512
                    local.set 7
                  end
                  i32.const 1
                  local.set 2
                  br 2 (;@5;)
                end
                i32.const 0
                local.set 7
              end
              i32.const 0
              local.set 2
            end
            local.get 0
            local.get 3
            i32.store offset=12
            local.get 0
            local.get 1
            i64.load align=4
            i64.store align=4
            local.get 0
            local.get 2
            local.get 7
            i32.or
            i32.store offset=16
            local.get 0
            i32.const 8
            i32.add
            local.get 1
            i32.const 8
            i32.add
            i32.load
            i32.store
            return
          end
          local.get 3
          local.get 4
          i32.ge_u
          br_if 0 (;@3;)
          loop  ;; label = @4
            local.get 3
            local.get 5
            i32.add
            i32.load8_s
            i32.const 0
            i32.lt_s
            br_if 1 (;@3;)
            local.get 4
            local.get 3
            i32.const 1
            i32.add
            local.tee 3
            i32.ne
            br_if 0 (;@4;)
          end
          br 2 (;@1;)
        end
        local.get 3
        local.get 4
        i32.lt_u
        br_if 0 (;@2;)
      end
    end
    local.get 0
    i32.const 2
    i32.store8 offset=16
    local.get 0
    local.get 1
    i64.load align=4
    i64.store align=4
    local.get 0
    i32.const 8
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i32.load
    i32.store)
  (func (;60;) (type 5) (result i32)
    (local i32)
    i32.const 0
    call 54
    local.tee 0
    call 9
    i32.const 32
    i32.ne
    if  ;; label = @1
      i32.const 1048910
      i32.const 16
      i32.const 1048853
      i32.const 16
      call 51
      unreachable
    end
    local.get 0)
  (func (;61;) (type 4) (param i32)
    call 16
    local.get 0
    i32.eq
    if  ;; label = @1
      return
    end
    i32.const 1048744
    i32.const 25
    call 2
    unreachable)
  (func (;62;) (type 4) (param i32)
    local.get 0
    call 85
    call 17
    drop)
  (func (;63;) (type 4) (param i32)
    (local i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 1
    global.set 0
    local.get 0
    i32.const 8
    i32.add
    i32.load
    call 83
    local.set 2
    local.get 1
    local.get 0
    i32.const 4
    i32.add
    i32.store offset=24
    local.get 1
    local.get 2
    i32.store offset=20
    local.get 1
    i32.const 1
    i32.store offset=16
    loop  ;; label = @1
      local.get 1
      i32.const 8
      i32.add
      local.get 1
      i32.const 16
      i32.add
      call 64
      local.get 1
      i32.load offset=8
      if  ;; label = @2
        local.get 1
        i32.load offset=12
        call 17
        drop
        br 1 (;@1;)
      end
    end
    local.get 1
    i32.const 32
    i32.add
    global.set 0)
  (func (;64;) (type 3) (param i32 i32)
    (local i32)
    local.get 1
    i32.load
    local.tee 2
    local.get 1
    i32.load offset=4
    i32.gt_u
    if (result i32)  ;; label = @1
      i32.const 0
    else
      local.get 1
      local.get 2
      i32.const 1
      i32.add
      i32.store
      local.get 1
      i32.load offset=8
      i32.load
      local.get 2
      call 91
      call 85
      local.set 1
      i32.const 1
    end
    local.set 2
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store)
  (func (;65;) (type 4) (param i32)
    local.get 0
    call 66
    call 18)
  (func (;66;) (type 2) (param i32) (result i32)
    local.get 0
    call 86
    call 76)
  (func (;67;) (type 2) (param i32) (result i32)
    (local i32 i32 i32 i32 i64)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 0
    i32.store offset=12
    local.get 0
    local.get 2
    i32.const 12
    i32.add
    local.tee 1
    i32.const 4
    call 68
    local.get 1
    i32.const 4
    call 69
    local.set 5
    local.get 0
    i32.load offset=12
    local.set 1
    call 3
    local.set 3
    local.get 0
    i32.load
    local.get 1
    local.get 5
    i32.wrap_i64
    local.tee 4
    local.get 3
    call 19
    if  ;; label = @1
      i32.const 1048783
      i32.const 15
      call 70
      unreachable
    end
    local.get 0
    local.get 1
    local.get 4
    i32.add
    i32.store offset=12
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    local.get 3)
  (func (;68;) (type 6) (param i32 i32 i32)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    local.get 0
    i32.load offset=12
    local.set 5
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.load8_u offset=8
          i32.eqz
          if  ;; label = @4
            local.get 0
            i32.load
            local.tee 6
            call 9
            local.set 4
            i32.const 1059768
            i32.load8_u
            local.get 4
            i32.const 10000
            i32.gt_u
            i32.or
            br_if 1 (;@3;)
            i32.const 1049764
            local.get 4
            i32.store
            i32.const 1059768
            i32.const 1
            i32.store8
            local.get 3
            i32.const 8
            i32.add
            local.get 4
            call 78
            local.get 6
            i32.const 0
            local.get 3
            i32.load offset=8
            local.get 3
            i32.load offset=12
            call 73
            drop
            local.get 0
            i32.const 1
            i32.store8 offset=8
          end
          local.get 2
          local.get 5
          i32.add
          local.tee 4
          i32.const 1049764
          i32.load
          i32.gt_u
          br_if 2 (;@1;)
          local.get 3
          local.get 5
          local.get 4
          call 82
          local.get 1
          local.get 2
          local.get 3
          i32.load
          local.get 3
          i32.load offset=4
          call 79
          br 1 (;@2;)
        end
        local.get 0
        i32.const 0
        i32.store8 offset=8
        local.get 6
        local.get 5
        local.get 1
        local.get 2
        call 73
        br_if 1 (;@1;)
        local.get 2
        local.get 5
        i32.add
        local.set 4
      end
      local.get 0
      local.get 4
      i32.store offset=12
      local.get 3
      i32.const 16
      i32.add
      global.set 0
      return
    end
    i32.const 1048783
    i32.const 15
    call 70
    unreachable)
  (func (;69;) (type 17) (param i32 i32) (result i64)
    (local i64)
    block  ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 1
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        i32.const 1
        i32.sub
        local.set 1
        local.get 0
        i64.load8_u
        local.get 2
        i64.const 8
        i64.shl
        i64.or
        local.set 2
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        br 0 (;@2;)
      end
      unreachable
    end
    local.get 2)
  (func (;70;) (type 3) (param i32 i32)
    (local i32)
    i32.const 1048831
    i32.const 22
    call 52
    local.tee 2
    local.get 0
    local.get 1
    call 10
    drop
    local.get 2
    call 11
    unreachable)
  (func (;71;) (type 2) (param i32) (result i32)
    i32.const -14
    i64.const 1
    call 0
    local.get 0
    i32.const -14
    call 72
    i32.const 255
    i32.and
    i32.eqz)
  (func (;72;) (type 0) (param i32 i32) (result i32)
    i32.const -1
    local.get 0
    local.get 1
    call 27
    local.tee 0
    i32.const 0
    i32.ne
    local.get 0
    i32.const 0
    i32.lt_s
    select)
  (func (;73;) (type 9) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call 49)
  (func (;74;) (type 3) (param i32 i32)
    local.get 0
    local.get 1
    call 4
    drop)
  (func (;75;) (type 2) (param i32) (result i32)
    (local i32)
    call 39
    local.tee 1
    local.get 0
    call 21
    drop
    local.get 1)
  (func (;76;) (type 2) (param i32) (result i32)
    local.get 0
    call 39
    local.tee 0
    call 22
    drop
    local.get 0)
  (func (;77;) (type 4) (param i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    local.get 0
    block (result i32)  ;; label = @1
      i32.const 1059768
      i32.load8_u
      local.tee 2
      i32.eqz
      if  ;; label = @2
        i32.const 1059768
        i32.const 1
        i32.store8
        i32.const 1049764
        i32.const 0
        i32.store
        local.get 1
        i32.const 8
        i32.add
        i32.const 0
        call 78
        local.get 1
        i32.load offset=8
        local.get 1
        i32.load offset=12
        i32.const 1049712
        i32.const 0
        call 79
        call 45
        br 1 (;@1;)
      end
      i32.const 1049712
      i32.const 0
      call 52
    end
    i32.store
    local.get 0
    local.get 2
    i32.const 1
    i32.xor
    i32.store8 offset=4
    local.get 1
    i32.const 16
    i32.add
    global.set 0)
  (func (;78;) (type 3) (param i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 8
    i32.add
    i32.const 1049768
    i32.const 10000
    local.get 1
    call 104
    local.get 2
    i32.load offset=12
    local.set 1
    local.get 0
    local.get 2
    i32.load offset=8
    i32.store
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;79;) (type 7) (param i32 i32 i32 i32)
    local.get 1
    local.get 3
    i32.eq
    if  ;; label = @1
      local.get 0
      local.get 2
      local.get 1
      call 148
      drop
      return
    end
    call 50
    unreachable)
  (func (;80;) (type 0) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 1
    i32.store8 offset=12
    local.get 2
    local.get 0
    i32.store offset=8
    local.get 2
    i32.const 8
    i32.add
    call 81
    local.get 2
    i32.load offset=8
    local.get 2
    i32.load8_u offset=12
    if  ;; label = @1
      i32.const 1049764
      i32.const 0
      i32.store
      i32.const 1059768
      i32.const 0
      i32.store8
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;81;) (type 4) (param i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    local.get 0
    i32.load8_u offset=4
    local.get 0
    i32.const 0
    i32.store8 offset=4
    i32.const 1
    i32.and
    if  ;; label = @1
      local.get 1
      i32.const 8
      i32.add
      i32.const 0
      i32.const 1049764
      i32.load
      call 82
      local.get 0
      i32.load
      local.get 1
      i32.load offset=8
      local.get 1
      i32.load offset=12
      call 10
      drop
      i32.const 1049764
      i32.const 0
      i32.store
      i32.const 1059768
      i32.const 0
      i32.store8
    end
    local.get 1
    i32.const 16
    i32.add
    global.set 0)
  (func (;82;) (type 6) (param i32 i32 i32)
    block  ;; label = @1
      local.get 1
      local.get 2
      i32.le_u
      if  ;; label = @2
        local.get 2
        i32.const 10000
        i32.le_u
        br_if 1 (;@1;)
        call 41
        unreachable
      end
      call 41
      unreachable
    end
    local.get 0
    local.get 2
    local.get 1
    i32.sub
    i32.store offset=4
    local.get 0
    local.get 1
    i32.const 1049768
    i32.add
    i32.store)
  (func (;83;) (type 2) (param i32) (result i32)
    (local i64)
    local.get 0
    call 84
    local.tee 1
    i64.const 4294967296
    i64.ge_u
    if  ;; label = @1
      i32.const 1048769
      i32.const 14
      call 70
      unreachable
    end
    local.get 1
    i32.wrap_i64)
  (func (;84;) (type 12) (param i32) (result i64)
    (local i32 i32 i64)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    i64.const 0
    i64.store offset=8
    local.get 0
    call 86
    local.tee 0
    call 9
    local.tee 2
    i32.const 9
    i32.ge_u
    if  ;; label = @1
      i32.const 1048769
      i32.const 14
      call 70
      unreachable
    end
    local.get 1
    local.get 1
    i32.const 8
    i32.add
    i32.const 8
    local.get 2
    call 104
    local.get 0
    i32.const 0
    local.get 1
    i32.load
    local.tee 0
    local.get 1
    i32.load offset=4
    local.tee 2
    call 49
    drop
    local.get 0
    local.get 2
    call 69
    local.get 1
    i32.const 16
    i32.add
    global.set 0)
  (func (;85;) (type 2) (param i32) (result i32)
    local.get 0
    call 86
    local.tee 0
    call 9
    i32.const 32
    i32.ne
    if  ;; label = @1
      i32.const 1048853
      i32.const 16
      call 70
      unreachable
    end
    local.get 0)
  (func (;86;) (type 2) (param i32) (result i32)
    local.get 0
    call 39
    local.tee 0
    call 23
    drop
    local.get 0)
  (func (;87;) (type 3) (param i32 i32)
    local.get 0
    local.get 1
    call 24
    drop)
  (func (;88;) (type 4) (param i32)
    i32.const -20
    i32.const 0
    i32.const 0
    call 20
    drop
    local.get 0
    i32.const -20
    call 24
    drop)
  (func (;89;) (type 3) (param i32 i32)
    local.get 0
    local.get 1
    i64.extend_i32_u
    call 90)
  (func (;90;) (type 10) (param i32 i64)
    (local i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.get 1
    i64.const 40
    i64.shl
    i64.const 71776119061217280
    i64.and
    local.get 1
    i64.const 56
    i64.shl
    i64.or
    local.get 1
    i64.const 24
    i64.shl
    i64.const 280375465082880
    i64.and
    local.get 1
    i64.const 8
    i64.shl
    i64.const 1095216660480
    i64.and
    i64.or
    i64.or
    local.get 1
    i64.const 8
    i64.shr_u
    i64.const 4278190080
    i64.and
    local.get 1
    i64.const 24
    i64.shr_u
    i64.const 16711680
    i64.and
    i64.or
    local.get 1
    i64.const 40
    i64.shr_u
    i64.const 65280
    i64.and
    local.get 1
    i64.const 56
    i64.shr_u
    i64.or
    i64.or
    i64.or
    i64.store offset=8
    block  ;; label = @1
      local.get 1
      i64.eqz
      if  ;; label = @2
        i32.const 1049712
        local.set 4
        br 1 (;@1;)
      end
      loop  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            i32.const 8
            i32.ne
            if  ;; label = @5
              local.get 3
              i32.const 8
              i32.add
              local.get 2
              i32.add
              local.tee 4
              i32.load8_u
              i32.eqz
              br_if 2 (;@3;)
              local.get 2
              i32.const 9
              i32.ge_u
              br_if 1 (;@4;)
              i32.const 8
              local.get 2
              i32.sub
              local.set 2
              br 4 (;@1;)
            end
            call 50
            unreachable
          end
          call 50
          unreachable
        end
        local.get 2
        i32.const 1
        i32.add
        local.set 2
        br 0 (;@2;)
      end
      unreachable
    end
    local.get 0
    local.get 4
    local.get 2
    call 100
    local.get 3
    i32.const 16
    i32.add
    global.set 0)
  (func (;91;) (type 0) (param i32 i32) (result i32)
    local.get 0
    call 42
    local.tee 0
    i32.const 1048802
    i32.const 5
    call 10
    drop
    local.get 1
    local.get 0
    call 92
    local.get 0)
  (func (;92;) (type 3) (param i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 0
    i32.const 8
    i32.shl
    i32.const 16711680
    i32.and
    local.get 0
    i32.const 24
    i32.shl
    i32.or
    local.get 0
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 0
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
    i32.store offset=12
    local.get 1
    local.get 2
    i32.const 12
    i32.add
    i32.const 4
    call 10
    drop
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;93;) (type 2) (param i32) (result i32)
    local.get 0
    i32.const -25
    call 23
    drop
    i32.const -25
    call 9
    i32.eqz)
  (func (;94;) (type 0) (param i32 i32) (result i32)
    local.get 0
    call 42
    local.tee 0
    i32.const 1048807
    i32.const 6
    call 10
    drop
    local.get 0
    local.get 1
    call 74
    local.get 0)
  (func (;95;) (type 3) (param i32 i32)
    (local i32 i32 i32)
    local.get 0
    i32.load
    local.tee 3
    local.get 1
    call 96
    i32.eqz
    if  ;; label = @1
      local.get 0
      i32.const 8
      i32.add
      i32.load
      local.tee 2
      call 83
      local.set 4
      local.get 0
      i32.const 4
      i32.add
      i32.load
      local.get 4
      i32.const 1
      i32.add
      local.tee 0
      call 91
      local.get 1
      call 87
      local.get 2
      local.get 0
      call 89
      local.get 2
      call 83
      local.set 0
      local.get 3
      local.get 1
      call 94
      local.get 0
      i64.extend_i32_u
      call 90
    end)
  (func (;96;) (type 0) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call 94
    call 83
    i32.const 0
    i32.ne)
  (func (;97;) (type 3) (param i32 i32)
    local.get 0
    call 75
    local.get 1
    call 98)
  (func (;98;) (type 3) (param i32 i32)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.get 0
    call 9
    local.tee 2
    i32.const 24
    i32.shl
    local.get 2
    i32.const 8
    i32.shl
    i32.const 16711680
    i32.and
    i32.or
    local.get 2
    i32.const 8
    i32.shr_u
    i32.const 65280
    i32.and
    local.get 2
    i32.const 24
    i32.shr_u
    i32.or
    i32.or
    i32.store offset=12
    local.get 1
    local.get 3
    i32.const 12
    i32.add
    i32.const 4
    call 103
    local.get 1
    i32.load8_u offset=4
    local.set 2
    local.get 1
    i32.const 0
    i32.store8 offset=4
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.const 1
          i32.and
          local.tee 2
          if  ;; label = @4
            local.get 0
            call 9
            local.tee 5
            i32.const 10000
            i32.const 1049764
            i32.load
            local.tee 4
            i32.sub
            i32.gt_u
            br_if 2 (;@2;)
            local.get 3
            local.get 4
            local.get 4
            local.get 5
            i32.add
            local.tee 4
            call 106
            local.get 0
            i32.const 0
            local.get 3
            i32.load
            local.get 3
            i32.load offset=4
            call 73
            drop
            i32.const 1049764
            local.get 4
            i32.store
            br 1 (;@3;)
          end
          local.get 1
          i32.load
          local.get 0
          call 74
        end
        local.get 1
        local.get 2
        i32.store8 offset=4
        br 1 (;@1;)
      end
      local.get 1
      call 81
      local.get 1
      i32.load
      local.get 0
      call 74
      local.get 1
      i32.load8_u offset=4
      local.get 1
      local.get 2
      i32.store8 offset=4
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      i32.const 1049764
      i32.const 0
      i32.store
      i32.const 1059768
      i32.const 0
      i32.store8
    end
    local.get 3
    i32.const 16
    i32.add
    global.set 0)
  (func (;99;) (type 6) (param i32 i32 i32)
    local.get 2
    local.get 0
    local.get 1
    call 100)
  (func (;100;) (type 6) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call 52
    call 24
    drop)
  (func (;101;) (type 3) (param i32 i32)
    local.get 0
    local.get 1
    call 25)
  (func (;102;) (type 18) (param i64 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 0
    i64.const 40
    i64.shl
    i64.const 71776119061217280
    i64.and
    local.get 0
    i64.const 56
    i64.shl
    i64.or
    local.get 0
    i64.const 24
    i64.shl
    i64.const 280375465082880
    i64.and
    local.get 0
    i64.const 8
    i64.shl
    i64.const 1095216660480
    i64.and
    i64.or
    i64.or
    local.get 0
    i64.const 8
    i64.shr_u
    i64.const 4278190080
    i64.and
    local.get 0
    i64.const 24
    i64.shr_u
    i64.const 16711680
    i64.and
    i64.or
    local.get 0
    i64.const 40
    i64.shr_u
    i64.const 65280
    i64.and
    local.get 0
    i64.const 56
    i64.shr_u
    i64.or
    i64.or
    i64.or
    i64.store offset=8
    local.get 1
    local.get 2
    i32.const 8
    i32.add
    i32.const 8
    call 103
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;103;) (type 6) (param i32 i32 i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load8_u offset=4
        if  ;; label = @3
          i32.const 10000
          i32.const 1049764
          i32.load
          local.tee 4
          i32.sub
          local.get 2
          i32.lt_u
          br_if 1 (;@2;)
          local.get 3
          i32.const 8
          i32.add
          local.get 4
          local.get 2
          local.get 4
          i32.add
          local.tee 0
          call 106
          local.get 3
          i32.load offset=8
          local.get 3
          i32.load offset=12
          local.get 1
          local.get 2
          call 79
          i32.const 1049764
          local.get 0
          i32.store
          br 2 (;@1;)
        end
        local.get 0
        i32.load
        local.get 1
        local.get 2
        call 10
        drop
        br 1 (;@1;)
      end
      local.get 0
      call 81
      local.get 0
      i32.load
      local.get 1
      local.get 2
      call 10
      drop
    end
    local.get 3
    i32.const 16
    i32.add
    global.set 0)
  (func (;104;) (type 7) (param i32 i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 4
    global.set 0
    local.get 4
    i32.const 8
    i32.add
    i32.const 0
    local.get 3
    local.get 1
    local.get 2
    call 40
    local.get 4
    i32.load offset=12
    local.set 1
    local.get 0
    local.get 4
    i32.load offset=8
    i32.store
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 4
    i32.const 16
    i32.add
    global.set 0)
  (func (;105;) (type 3) (param i32 i32)
    (local i32 i32 i32 i32 i32)
    local.get 1
    if  ;; label = @1
      block  ;; label = @2
        local.get 0
        local.set 2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.const 3
            i32.add
            i32.const 2
            i32.shr_u
            i32.const 1
            i32.sub
            local.tee 0
            i32.const 256
            i32.ge_u
            if  ;; label = @5
              local.get 2
              i32.const 0
              i32.store
              local.get 2
              i32.const 8
              i32.sub
              local.tee 0
              local.get 0
              i32.load
              local.tee 3
              i32.const -2
              i32.and
              i32.store
              i32.const 1059784
              i32.load
              local.set 5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 0
                  i32.const 4
                  i32.add
                  local.tee 4
                  i32.load
                  i32.const -4
                  i32.and
                  local.tee 1
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 1
                  i32.load8_u
                  i32.const 1
                  i32.and
                  br_if 0 (;@7;)
                  local.get 1
                  local.set 2
                  block  ;; label = @8
                    local.get 3
                    i32.const -4
                    i32.and
                    local.tee 6
                    i32.eqz
                    local.get 3
                    i32.const 2
                    i32.and
                    i32.or
                    i32.eqz
                    if  ;; label = @9
                      local.get 6
                      local.get 6
                      i32.load offset=4
                      i32.const 3
                      i32.and
                      local.get 1
                      i32.or
                      i32.store offset=4
                      local.get 4
                      i32.load
                      local.tee 3
                      i32.const -4
                      i32.and
                      local.tee 2
                      i32.eqz
                      br_if 1 (;@8;)
                    end
                    local.get 2
                    local.get 2
                    i32.load
                    i32.const 3
                    i32.and
                    local.get 0
                    i32.load
                    i32.const -4
                    i32.and
                    i32.or
                    i32.store
                    local.get 4
                    i32.load
                    local.set 3
                  end
                  local.get 4
                  local.get 3
                  i32.const 3
                  i32.and
                  i32.store
                  local.get 0
                  local.get 0
                  i32.load
                  local.tee 0
                  i32.const 3
                  i32.and
                  i32.store
                  local.get 0
                  i32.const 2
                  i32.and
                  i32.eqz
                  br_if 1 (;@6;)
                  local.get 1
                  local.get 1
                  i32.load
                  i32.const 2
                  i32.or
                  i32.store
                  br 1 (;@6;)
                end
                local.get 3
                i32.const -4
                i32.and
                local.tee 1
                i32.eqz
                local.get 3
                i32.const 2
                i32.and
                i32.or
                br_if 2 (;@4;)
                local.get 1
                i32.load8_u
                i32.const 1
                i32.and
                br_if 2 (;@4;)
                local.get 2
                local.get 1
                i32.load offset=8
                i32.const -4
                i32.and
                i32.store
                local.get 1
                local.get 0
                i32.const 1
                i32.or
                i32.store offset=8
              end
              local.get 5
              local.set 0
              br 2 (;@3;)
            end
            local.get 2
            local.get 0
            i32.const 2
            i32.shl
            i32.const 1059788
            i32.add
            local.tee 1
            i32.load
            i32.store
            local.get 2
            i32.const 8
            i32.sub
            local.tee 0
            local.get 0
            i32.load
            i32.const -2
            i32.and
            i32.store
            local.get 1
            local.get 0
            i32.store
            br 2 (;@2;)
          end
          local.get 2
          local.get 5
          i32.store
        end
        i32.const 1059784
        local.get 0
        i32.store
      end
    end)
  (func (;106;) (type 6) (param i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i32.const 8
    i32.add
    local.get 1
    local.get 2
    i32.const 1049768
    i32.const 10000
    call 40
    local.get 3
    i32.load offset=12
    local.set 1
    local.get 0
    local.get 3
    i32.load offset=8
    i32.store
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 3
    i32.const 16
    i32.add
    global.set 0)
  (func (;107;) (type 4) (param i32)
    (local i32 i32 i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 1
    global.set 0
    local.get 0
    i32.const 8
    i32.add
    i32.load
    call 83
    local.set 2
    local.get 1
    local.get 0
    i32.const 4
    i32.add
    local.tee 4
    i32.store offset=24
    local.get 1
    local.get 2
    i32.store offset=20
    local.get 1
    i32.const 1
    i32.store offset=16
    loop  ;; label = @1
      local.get 1
      i32.const 8
      i32.add
      local.get 1
      i32.const 16
      i32.add
      call 64
      local.get 1
      i32.load offset=8
      if  ;; label = @2
        local.get 0
        i32.load
        local.get 1
        i32.load offset=12
        call 94
        call 88
        br 1 (;@1;)
      else
        i32.const 1
        local.set 2
        local.get 0
        i32.const 8
        i32.add
        i32.load
        call 83
        local.set 3
        loop  ;; label = @3
          local.get 5
          local.get 2
          local.get 3
          i32.gt_u
          i32.or
          i32.eqz
          if  ;; label = @4
            local.get 4
            i32.load
            local.get 2
            call 91
            call 88
            local.get 2
            local.get 3
            i32.ge_u
            local.set 5
            local.get 2
            local.get 2
            local.get 3
            i32.lt_u
            i32.add
            local.set 2
            br 1 (;@3;)
          end
        end
        local.get 0
        i32.const 8
        i32.add
        i32.load
        i32.const 0
        call 89
        local.get 1
        i32.const 32
        i32.add
        global.set 0
      end
    end)
  (func (;108;) (type 3) (param i32 i32)
    (local i32 i32)
    local.get 1
    call 42
    local.set 2
    local.get 1
    call 42
    local.tee 3
    i32.const 1048869
    i32.const 4
    call 10
    drop
    local.get 0
    i32.const 8
    i32.add
    local.get 3
    i32.store
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store)
  (func (;109;) (type 0) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call 29
    i32.const 0
    i32.le_s)
  (func (;110;) (type 5) (result i32)
    i32.const 1049301
    i32.const 9
    call 52)
  (func (;111;) (type 4) (param i32)
    local.get 0
    i32.const 1049310
    i32.const 12
    call 52
    call 108)
  (func (;112;) (type 2) (param i32) (result i32)
    (local i32)
    i32.const 1049322
    i32.const 12
    call 52
    local.tee 1
    local.get 0
    call 74
    local.get 1)
  (func (;113;) (type 5) (result i32)
    i32.const 1048897
    i32.const 13
    call 52)
  (func (;114;) (type 2) (param i32) (result i32)
    (local i32)
    i32.const 1049334
    i32.const 14
    call 52
    local.tee 1
    local.get 0
    call 74
    local.get 1)
  (func (;115;) (type 5) (result i32)
    i32.const 1049348
    i32.const 15
    call 52)
  (func (;116;) (type 4) (param i32)
    local.get 0
    i32.const 1049378
    i32.const 16
    call 52
    call 108)
  (func (;117;) (type 5) (result i32)
    i32.const 1048873
    i32.const 24
    call 52)
  (func (;118;) (type 0) (param i32 i32) (result i32)
    (local i32)
    local.get 1
    i32.const 1049394
    i32.const 24
    call 52
    local.tee 2
    call 92
    local.get 2
    local.get 0
    local.get 1
    call 10
    drop
    local.get 2)
  (func (;119;) (type 5) (result i32)
    i32.const 1049418
    i32.const 6
    call 52)
  (func (;120;) (type 1)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    call 30
    i32.const 1059772
    call 16
    i32.store
    i32.const 1059772
    i32.load
    i32.const 0
    i32.lt_s
    if  ;; label = @1
      i32.const 1048709
      i32.const 17
      call 2
      unreachable
    end
    local.get 0
    i32.const 0
    i32.store offset=12
    block  ;; label = @1
      local.get 0
      i32.const 12
      i32.add
      local.tee 1
      i32.load
      local.tee 3
      i32.const 1059772
      i32.load
      i32.ge_s
      if  ;; label = @2
        i32.const 1
        local.set 2
        br 1 (;@1;)
      end
      local.get 1
      local.get 3
      i32.const 1
      i32.add
      i32.store
      local.get 3
      call 54
      call 55
      local.set 1
    end
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store
    local.get 0
    i32.load offset=4
    local.set 1
    local.get 0
    i32.load
    local.set 3
    i32.const 1059772
    i32.load
    local.get 0
    i32.load offset=12
    i32.gt_s
    if  ;; label = @1
      i32.const 1048726
      i32.const 18
      call 2
      unreachable
    end
    call 115
    local.set 2
    block  ;; label = @1
      local.get 3
      local.get 1
      i32.const 2147483646
      i32.eq
      i32.or
      i32.eqz
      if  ;; label = @2
        local.get 2
        local.get 1
        call 24
        drop
        br 1 (;@1;)
      end
      i32.const 1048798
      i32.const 4
      local.get 2
      call 99
    end
    local.get 0
    i32.const 16
    i32.add
    global.set 0)
  (func (;121;) (type 1)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    call 53
    i32.const 0
    call 61
    block  ;; label = @1
      block  ;; label = @2
        call 31
        call 113
        call 84
        i64.le_u
        if  ;; label = @3
          call 46
          local.set 1
          i32.const -11
          local.set 2
          block  ;; label = @4
            i32.const 1059776
            i32.load8_u
            local.tee 3
            if  ;; label = @5
              i32.const -11
              i32.const 2147483647
              local.get 3
              select
              local.set 2
              br 1 (;@4;)
            end
            i32.const 1059776
            i32.const 1
            i32.store8
            i32.const -11
            call 32
          end
          local.get 2
          call 38
          local.set 2
          local.get 0
          call 116
          local.get 0
          i32.load
          local.get 1
          call 96
          i32.eqz
          br_if 1 (;@2;)
          local.get 0
          call 111
          local.get 0
          i32.load
          local.get 1
          call 96
          br_if 2 (;@1;)
          local.get 1
          call 114
          local.get 2
          call 75
          call 24
          drop
          local.get 0
          call 111
          local.get 0
          local.get 1
          call 95
          local.get 0
          i32.const 16
          i32.add
          global.set 0
          return
        end
        i32.const 1048964
        i32.const 90
        call 43
        unreachable
      end
      i32.const 1049054
      i32.const 43
      call 43
      unreachable
    end
    i32.const 1049097
    i32.const 37
    call 43
    unreachable)
  (func (;122;) (type 1)
    (local i32 i32 i32 i64)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 0
    global.set 0
    call 30
    i32.const 0
    call 61
    local.get 0
    call 119
    call 86
    local.tee 2
    call 9
    local.tee 1
    i32.store offset=32
    local.get 0
    i32.const 0
    i32.store offset=28
    local.get 0
    i32.const 0
    i32.store8 offset=24
    local.get 0
    local.get 1
    i32.store offset=20
    local.get 0
    local.get 2
    i32.store offset=16
    local.get 0
    i32.const 16
    i32.add
    local.tee 1
    call 67
    local.set 2
    local.get 0
    i64.const 0
    i64.store offset=40
    local.get 1
    local.get 0
    i32.const 40
    i32.add
    local.tee 1
    i32.const 8
    call 68
    local.get 1
    i32.const 8
    call 69
    local.set 3
    local.get 0
    i32.const 16
    i32.add
    call 67
    call 76
    local.set 1
    local.get 0
    i32.load offset=32
    local.get 0
    i32.load offset=28
    i32.eq
    if  ;; label = @1
      local.get 0
      i32.load8_u offset=24
      if  ;; label = @2
        i32.const 1049764
        i32.const 0
        i32.store
        i32.const 1059768
        i32.const 0
        i32.store8
      end
      local.get 0
      i32.const 8
      i32.add
      call 77
      local.get 0
      local.get 0
      i32.load offset=8
      i32.store offset=16
      local.get 0
      local.get 0
      i32.load8_u offset=12
      i32.const 1
      i32.and
      i32.store8 offset=20
      local.get 2
      local.get 0
      i32.const 16
      i32.add
      local.tee 2
      call 98
      local.get 3
      local.get 2
      call 102
      local.get 1
      local.get 2
      call 97
      local.get 0
      i32.load offset=16
      local.get 0
      i32.load8_u offset=20
      call 80
      call 17
      drop
      local.get 0
      i32.const 48
      i32.add
      global.set 0
      return
    end
    i32.const 1048769
    i32.const 14
    call 70
    unreachable)
  (func (;123;) (type 1)
    call 30
    i32.const 1
    call 61
    call 60
    call 114
    call 65)
  (func (;124;) (type 1)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    call 30
    i32.const 0
    call 61
    local.get 0
    call 111
    local.get 0
    call 63
    local.get 0
    i32.const 16
    i32.add
    global.set 0)
  (func (;125;) (type 1)
    (local i32)
    call 30
    i32.const 0
    call 61
    call 115
    call 86
    call 55
    local.tee 0
    i32.const 2147483646
    i32.ne
    if  ;; label = @1
      local.get 0
      call 17
      drop
      return
    end
    i32.const 1048798
    i32.const 4
    call 101)
  (func (;126;) (type 1)
    call 30
    i32.const 0
    call 61
    call 113
    call 84
    call 33)
  (func (;127;) (type 1)
    (local i64)
    call 30
    i32.const 0
    call 61
    call 117
    call 84
    local.tee 0
    i64.const 65536
    i64.ge_u
    if  ;; label = @1
      i32.const 1048769
      i32.const 14
      call 70
      unreachable
    end
    local.get 0
    call 33)
  (func (;128;) (type 1)
    call 30
    i32.const 0
    call 61
    call 110
    call 62)
  (func (;129;) (type 1)
    (local i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    call 30
    i32.const 1
    call 61
    local.get 0
    call 56
    local.get 0
    i32.load offset=4
    local.set 1
    local.get 0
    i32.load
    local.tee 2
    local.get 0
    i32.load offset=8
    call 118
    call 62
    local.get 2
    local.get 1
    call 105
    local.get 0
    i32.const 16
    i32.add
    global.set 0)
  (func (;130;) (type 1)
    (local i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 80
    i32.sub
    local.tee 0
    global.set 0
    call 30
    i32.const 1
    call 61
    local.get 0
    i32.const 16
    i32.add
    call 60
    call 112
    local.tee 3
    call 9
    local.tee 4
    call 57
    local.get 0
    i32.load offset=20
    local.set 2
    local.get 0
    i32.load offset=16
    local.set 1
    local.get 4
    i32.const 0
    i32.gt_s
    if  ;; label = @1
      local.get 3
      local.get 1
      call 34
      drop
    end
    local.get 0
    i32.const 8
    i32.add
    local.get 1
    local.get 2
    call 35
    local.tee 4
    call 57
    local.get 0
    i32.load offset=12
    local.set 5
    local.get 0
    i32.load offset=8
    local.set 3
    local.get 4
    if  ;; label = @1
      local.get 1
      local.get 2
      local.get 3
      call 36
      drop
    end
    local.get 1
    local.get 2
    call 105
    local.get 0
    i32.const 24
    i32.add
    local.get 3
    local.get 5
    call 58
    local.get 0
    i32.const 72
    i32.add
    local.get 0
    i32.const 32
    i32.add
    i32.load
    i32.store
    local.get 0
    local.get 0
    i64.load offset=24
    i64.store offset=64
    local.get 0
    i32.const 40
    i32.add
    local.get 0
    i32.const -64
    i32.sub
    call 59
    local.get 0
    i32.load8_u offset=56
    i32.const 2
    i32.ne
    if  ;; label = @1
      i32.const 1048813
      i32.const 18
      call 70
      unreachable
    end
    local.get 0
    i32.load offset=44
    local.set 1
    local.get 0
    i32.load offset=40
    local.tee 2
    local.get 0
    i32.load offset=48
    call 101
    local.get 2
    local.get 1
    call 105
    local.get 0
    i32.const 80
    i32.add
    global.set 0)
  (func (;131;) (type 1)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    call 30
    i32.const 0
    call 61
    local.get 0
    call 116
    local.get 0
    call 63
    local.get 0
    i32.const 16
    i32.add
    global.set 0)
  (func (;132;) (type 1)
    call 30
    i32.const 0
    call 61
    i32.const 1049363
    i32.const 15
    call 52
    call 65)
  (func (;133;) (type 1)
    (local i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    call 53
    i32.const 1
    call 61
    local.get 0
    call 56
    local.get 0
    i32.load offset=8
    local.set 1
    local.get 0
    i32.load offset=4
    local.set 5
    local.get 0
    i32.load
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          call 119
          call 93
          i32.eqz
          if  ;; label = @4
            call 46
            local.set 3
            local.get 0
            call 116
            local.get 0
            i32.load
            local.get 3
            call 96
            br_if 1 (;@3;)
            block  ;; label = @5
              local.get 1
              i32.eqz
              if  ;; label = @6
                i32.const 1
                local.set 2
                br 1 (;@5;)
              end
              local.get 1
              i32.const 0
              i32.lt_s
              br_if 3 (;@2;)
              local.get 1
              call 134
              local.tee 2
              i32.eqz
              br_if 4 (;@1;)
            end
            local.get 2
            local.get 4
            local.get 1
            call 148
            local.tee 2
            local.get 1
            local.get 3
            call 112
            call 99
            local.get 2
            local.get 1
            call 118
            local.get 3
            call 87
            local.get 0
            call 116
            local.get 0
            local.get 3
            call 95
            local.get 2
            local.get 1
            call 105
            local.get 4
            local.get 5
            call 105
            local.get 0
            i32.const 16
            i32.add
            global.set 0
            return
          end
          i32.const 1049134
          i32.const 48
          call 43
          unreachable
        end
        i32.const 1049182
        i32.const 30
        call 43
        unreachable
      end
      call 139
      unreachable
    end
    i32.const 1049680
    i32.const 16
    call 2
    unreachable)
  (func (;134;) (type 2) (param i32) (result i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    block  ;; label = @1
      local.get 0
      i32.eqz
      if  ;; label = @2
        i32.const 1
        local.set 0
        br 1 (;@1;)
      end
      local.get 0
      i32.const 3
      i32.add
      i32.const 2
      i32.shr_u
      local.tee 0
      i32.const 1
      i32.sub
      local.tee 2
      i32.const 256
      i32.ge_u
      if  ;; label = @2
        local.get 1
        i32.const 1059784
        i32.load
        i32.store offset=8
        local.get 0
        i32.const 1
        local.get 1
        i32.const 8
        i32.add
        i32.const 1049712
        i32.const 1049736
        call 138
        local.set 0
        i32.const 1059784
        local.get 1
        i32.load offset=8
        i32.store
        br 1 (;@1;)
      end
      local.get 1
      i32.const 1059784
      i32.store offset=4
      local.get 1
      local.get 2
      i32.const 2
      i32.shl
      i32.const 1059788
      i32.add
      local.tee 2
      i32.load
      i32.store offset=12
      local.get 0
      i32.const 1
      local.get 1
      i32.const 12
      i32.add
      local.get 1
      i32.const 4
      i32.add
      i32.const 1049712
      call 138
      local.set 0
      local.get 2
      local.get 1
      i32.load offset=12
      i32.store
    end
    local.get 1
    i32.const 16
    i32.add
    global.set 0
    local.get 0)
  (func (;135;) (type 1)
    (local i32 i32 i32 i32 i32 i64 i64)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 0
    global.set 0
    i32.const 2
    call 61
    i32.const 0
    call 15
    local.set 5
    i32.const 1
    call 15
    local.tee 6
    i64.const 65536
    i64.ge_u
    if  ;; label = @1
      i32.const 1048873
      i32.const 24
      i32.const 1048769
      i32.const 14
      call 51
      unreachable
    end
    local.get 6
    i32.wrap_i64
    local.set 1
    call 46
    local.set 2
    block  ;; label = @1
      call 119
      call 93
      if  ;; label = @2
        call 113
        local.get 5
        call 90
        call 117
        local.get 1
        i64.extend_i32_u
        i64.const 65535
        i64.and
        call 90
        local.get 0
        i32.const 8
        i32.add
        call 48
        local.get 0
        i32.load offset=16
        local.tee 1
        call 42
        drop
        local.get 0
        i32.load offset=20
        local.tee 3
        call 38
        call 71
        i32.eqz
        br_if 1 (;@1;)
        call 119
        local.get 0
        i64.load offset=8
        local.get 0
        call 77
        local.get 0
        local.get 0
        i32.load
        i32.store offset=24
        local.get 0
        local.get 0
        i32.load8_u offset=4
        i32.const 1
        i32.and
        i32.store8 offset=28
        local.get 1
        local.get 0
        i32.const 24
        i32.add
        local.tee 1
        call 98
        local.get 1
        call 102
        local.get 3
        local.get 1
        call 97
        local.get 0
        i32.load offset=24
        local.get 0
        i32.load8_u offset=28
        call 80
        call 24
        drop
        call 110
        local.get 2
        call 87
        local.get 0
        i32.const 32
        i32.add
        global.set 0
        return
      end
      i32.const 1049212
      i32.const 89
      call 43
      unreachable
    end
    i32.const 1048942
    i32.const 22
    call 43
    unreachable)
  (func (;136;) (type 1)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 0
    global.set 0
    call 30
    call 47
    call 46
    call 109
    i32.eqz
    if  ;; label = @1
      i32.const 0
      call 61
      local.get 0
      i32.const 16
      i32.add
      local.tee 1
      call 111
      local.get 0
      i32.const 24
      i32.add
      i32.load
      call 83
      local.set 3
      call 110
      call 85
      local.set 7
      call 47
      local.set 5
      call 39
      local.tee 6
      i64.const 0
      call 0
      local.get 0
      local.get 1
      i32.const 4
      i32.or
      local.tee 1
      i32.store offset=40
      local.get 0
      local.get 3
      i32.store offset=36
      local.get 0
      i32.const 1
      i32.store offset=32
      loop  ;; label = @2
        local.get 0
        i32.const 8
        i32.add
        local.get 0
        i32.const 32
        i32.add
        call 64
        local.get 0
        i32.load offset=8
        if  ;; label = @3
          local.get 0
          i32.load offset=12
          local.tee 3
          call 114
          call 66
          local.tee 2
          local.get 6
          local.get 2
          local.get 6
          call 72
          i32.const 255
          i32.and
          i32.const 1
          i32.eq
          local.tee 2
          select
          local.set 6
          local.get 3
          local.get 5
          local.get 2
          select
          local.set 5
          br 1 (;@2;)
        else
          local.get 0
          i32.const 32
          i32.add
          call 48
          local.get 0
          i32.load offset=44
          local.set 2
          local.get 0
          i64.load offset=32
          local.set 10
          local.get 0
          i32.load offset=40
          local.set 3
          local.get 0
          i32.load offset=24
          call 83
          local.set 4
          local.get 0
          local.get 1
          i32.store offset=40
          local.get 0
          local.get 4
          i32.store offset=36
          local.get 0
          i32.const 1
          i32.store offset=32
          loop  ;; label = @4
            local.get 0
            local.get 0
            i32.const 32
            i32.add
            call 64
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                i32.load
                i32.eqz
                if  ;; label = @7
                  local.get 2
                  call 71
                  i32.eqz
                  br_if 1 (;@6;)
                  call 45
                  local.set 8
                  call 45
                  local.set 9
                  global.get 0
                  i32.const 16
                  i32.sub
                  local.tee 1
                  global.set 0
                  call 45
                  local.set 4
                  local.get 3
                  call 42
                  local.set 3
                  local.get 2
                  call 38
                  local.set 2
                  local.get 1
                  local.get 10
                  i64.const 40
                  i64.shl
                  i64.const 71776119061217280
                  i64.and
                  local.get 10
                  i64.const 56
                  i64.shl
                  i64.or
                  local.get 10
                  i64.const 24
                  i64.shl
                  i64.const 280375465082880
                  i64.and
                  local.get 10
                  i64.const 8
                  i64.shl
                  i64.const 1095216660480
                  i64.and
                  i64.or
                  i64.or
                  local.get 10
                  i64.const 8
                  i64.shr_u
                  i64.const 4278190080
                  i64.and
                  local.get 10
                  i64.const 24
                  i64.shr_u
                  i64.const 16711680
                  i64.and
                  i64.or
                  local.get 10
                  i64.const 40
                  i64.shr_u
                  i64.const 65280
                  i64.and
                  local.get 10
                  i64.const 56
                  i64.shr_u
                  i64.or
                  i64.or
                  i64.or
                  i64.store offset=4 align=4
                  local.get 1
                  local.get 3
                  i32.const 8
                  i32.shl
                  i32.const 16711680
                  i32.and
                  local.get 3
                  i32.const 24
                  i32.shl
                  i32.or
                  local.get 3
                  i32.const 8
                  i32.shr_u
                  i32.const 65280
                  i32.and
                  local.get 3
                  i32.const 24
                  i32.shr_u
                  i32.or
                  i32.or
                  i32.store
                  local.get 1
                  local.get 2
                  i32.const 8
                  i32.shl
                  i32.const 16711680
                  i32.and
                  local.get 2
                  i32.const 24
                  i32.shl
                  i32.or
                  local.get 2
                  i32.const 8
                  i32.shr_u
                  i32.const 65280
                  i32.and
                  local.get 2
                  i32.const 24
                  i32.shr_u
                  i32.or
                  i32.or
                  i32.store offset=12
                  local.get 4
                  local.get 1
                  i32.const 16
                  call 10
                  drop
                  local.get 5
                  local.get 4
                  i64.const 0
                  local.get 8
                  local.get 9
                  call 28
                  drop
                  local.get 1
                  i32.const 16
                  i32.add
                  global.set 0
                  local.get 7
                  local.get 6
                  call 44
                  call 119
                  call 88
                  local.get 0
                  i32.const 32
                  i32.add
                  local.tee 1
                  call 111
                  local.get 1
                  call 107
                  local.get 1
                  call 116
                  local.get 1
                  call 107
                  local.get 0
                  i32.const 48
                  i32.add
                  global.set 0
                  return
                end
                local.get 0
                i32.load offset=4
                local.tee 1
                call 114
                call 66
                local.set 4
                local.get 1
                local.get 5
                call 109
                i32.eqz
                br_if 1 (;@5;)
                local.get 1
                local.get 4
                call 44
                br 1 (;@5;)
              end
              i32.const 1048942
              i32.const 22
              call 43
              unreachable
            end
            local.get 1
            call 114
            call 88
            br 0 (;@4;)
          end
          unreachable
        end
        unreachable
      end
      unreachable
    end
    i32.const 1048576
    i32.const 36
    call 2
    unreachable)
  (func (;137;) (type 1)
    nop)
  (func (;138;) (type 13) (param i32 i32 i32 i32 i32) (result i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 6
    global.set 0
    block  ;; label = @1
      local.get 0
      local.get 1
      local.get 2
      local.get 3
      local.get 4
      call 141
      local.tee 5
      br_if 0 (;@1;)
      local.get 6
      i32.const 8
      i32.add
      local.get 3
      local.get 0
      local.get 1
      local.get 4
      i32.load offset=12
      call_indirect (type 7)
      i32.const 0
      local.set 5
      local.get 6
      i32.load offset=8
      br_if 0 (;@1;)
      local.get 6
      i32.load offset=12
      local.tee 5
      local.get 2
      i32.load
      i32.store offset=8
      local.get 2
      local.get 5
      i32.store
      local.get 0
      local.get 1
      local.get 2
      local.get 3
      local.get 4
      call 141
      local.set 5
    end
    local.get 6
    i32.const 16
    i32.add
    global.set 0
    local.get 5)
  (func (;139;) (type 1)
    i32.const 1049696
    i32.const 14
    call 2
    unreachable)
  (func (;140;) (type 7) (param i32 i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.get 1
    i32.load
    local.tee 4
    i32.load
    i32.store offset=12
    local.get 2
    i32.const 2
    i32.add
    local.tee 1
    local.get 1
    i32.mul
    local.tee 1
    i32.const 2048
    local.get 1
    i32.const 2048
    i32.gt_u
    select
    local.tee 2
    i32.const 4
    local.get 3
    i32.const 12
    i32.add
    i32.const 1049712
    i32.const 1049736
    call 138
    local.set 1
    local.get 4
    local.get 3
    i32.load offset=12
    i32.store
    local.get 1
    if (result i32)  ;; label = @1
      local.get 1
      i64.const 0
      i64.store offset=4 align=4
      local.get 1
      local.get 1
      local.get 2
      i32.const 2
      i32.shl
      i32.add
      i32.const 2
      i32.or
      i32.store
      i32.const 0
    else
      i32.const 1
    end
    local.set 2
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store
    local.get 3
    i32.const 16
    i32.add
    global.set 0)
  (func (;141;) (type 13) (param i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    local.get 1
    i32.const 1
    i32.sub
    local.set 9
    i32.const 0
    local.get 1
    i32.sub
    local.set 10
    local.get 0
    i32.const 2
    i32.shl
    local.set 8
    local.get 2
    i32.load
    local.set 5
    loop  ;; label = @1
      block  ;; label = @2
        local.get 5
        i32.eqz
        br_if 0 (;@2;)
        local.get 5
        local.set 1
        loop  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 1
                  i32.load offset=8
                  local.tee 5
                  i32.const 1
                  i32.and
                  i32.eqz
                  if  ;; label = @8
                    local.get 1
                    i32.load
                    i32.const -4
                    i32.and
                    local.tee 7
                    local.get 1
                    i32.const 8
                    i32.add
                    local.tee 6
                    i32.sub
                    local.get 8
                    i32.lt_u
                    br_if 3 (;@5;)
                    local.get 7
                    local.get 8
                    i32.sub
                    local.get 10
                    i32.and
                    local.tee 5
                    local.get 6
                    local.get 3
                    local.get 0
                    local.get 4
                    i32.load offset=16
                    call_indirect (type 0)
                    i32.const 2
                    i32.shl
                    i32.add
                    i32.const 8
                    i32.add
                    i32.lt_u
                    if  ;; label = @9
                      local.get 6
                      i32.load
                      local.set 5
                      local.get 6
                      local.get 9
                      i32.and
                      br_if 4 (;@5;)
                      local.get 2
                      local.get 5
                      i32.const -4
                      i32.and
                      i32.store
                      local.get 1
                      i32.load
                      local.set 2
                      local.get 1
                      local.set 5
                      br 3 (;@6;)
                    end
                    local.get 5
                    i32.const 0
                    i32.store
                    local.get 5
                    i32.const 8
                    i32.sub
                    local.tee 5
                    i64.const 0
                    i64.store align=4
                    local.get 5
                    local.get 1
                    i32.load
                    i32.const -4
                    i32.and
                    i32.store
                    local.get 5
                    local.get 1
                    i32.load
                    local.tee 2
                    i32.const -4
                    i32.and
                    local.tee 0
                    i32.eqz
                    local.get 2
                    i32.const 2
                    i32.and
                    i32.or
                    if (result i32)  ;; label = @9
                      i32.const 0
                    else
                      local.get 0
                      local.get 0
                      i32.load offset=4
                      i32.const 3
                      i32.and
                      local.get 5
                      i32.or
                      i32.store offset=4
                      local.get 5
                      i32.load offset=4
                      i32.const 3
                      i32.and
                    end
                    local.get 1
                    i32.or
                    i32.store offset=4
                    local.get 1
                    local.get 1
                    i32.load offset=8
                    i32.const -2
                    i32.and
                    i32.store offset=8
                    local.get 1
                    local.get 1
                    i32.load
                    local.tee 0
                    i32.const 3
                    i32.and
                    local.get 5
                    i32.or
                    local.tee 2
                    i32.store
                    local.get 0
                    i32.const 2
                    i32.and
                    br_if 1 (;@7;)
                    local.get 5
                    i32.load
                    local.set 2
                    br 2 (;@6;)
                  end
                  local.get 1
                  local.get 5
                  i32.const -2
                  i32.and
                  i32.store offset=8
                  local.get 1
                  i32.load offset=4
                  i32.const -4
                  i32.and
                  local.tee 5
                  if (result i32)  ;; label = @8
                    i32.const 0
                    local.get 5
                    local.get 5
                    i32.load8_u
                    i32.const 1
                    i32.and
                    select
                  else
                    i32.const 0
                  end
                  local.set 5
                  local.get 1
                  i32.load
                  local.tee 7
                  i32.const -4
                  i32.and
                  local.tee 6
                  i32.eqz
                  local.get 7
                  i32.const 2
                  i32.and
                  i32.or
                  i32.eqz
                  if  ;; label = @8
                    local.get 6
                    local.get 6
                    i32.load offset=4
                    i32.const 3
                    i32.and
                    local.get 1
                    i32.load offset=4
                    i32.const -4
                    i32.and
                    i32.or
                    i32.store offset=4
                  end
                  local.get 1
                  local.get 1
                  i32.load offset=4
                  local.tee 7
                  i32.const -4
                  i32.and
                  local.tee 6
                  if (result i32)  ;; label = @8
                    local.get 6
                    local.get 6
                    i32.load
                    i32.const 3
                    i32.and
                    local.get 1
                    i32.load
                    i32.const -4
                    i32.and
                    i32.or
                    i32.store
                    local.get 1
                    i32.load offset=4
                  else
                    local.get 7
                  end
                  i32.const 3
                  i32.and
                  i32.store offset=4
                  local.get 1
                  local.get 1
                  i32.load
                  i32.const 3
                  i32.and
                  i32.store
                  local.get 1
                  i32.load8_u
                  i32.const 2
                  i32.and
                  i32.eqz
                  br_if 3 (;@4;)
                  local.get 5
                  local.get 5
                  i32.load
                  i32.const 2
                  i32.or
                  i32.store
                  br 3 (;@4;)
                end
                local.get 1
                local.get 2
                i32.const -3
                i32.and
                i32.store
                local.get 5
                local.get 5
                i32.load
                i32.const 2
                i32.or
                local.tee 2
                i32.store
              end
              local.get 5
              local.get 2
              i32.const 1
              i32.or
              i32.store
              local.get 5
              i32.const 8
              i32.add
              local.set 11
              br 3 (;@2;)
            end
            local.get 2
            local.get 5
            i32.store
            br 3 (;@1;)
          end
          local.get 2
          local.get 5
          i32.store
          local.get 5
          local.set 1
          br 0 (;@3;)
        end
        unreachable
      end
    end
    local.get 11)
  (func (;142;) (type 4) (param i32)
    nop)
  (func (;143;) (type 7) (param i32 i32 i32 i32)
    block (result i32)  ;; label = @1
      local.get 2
      i32.const 2
      i32.shl
      local.tee 1
      local.get 3
      i32.const 3
      i32.shl
      i32.const 16384
      i32.add
      local.tee 2
      local.get 1
      local.get 2
      i32.gt_u
      select
      i32.const 65543
      i32.add
      local.tee 1
      i32.const 16
      i32.shr_u
      memory.grow
      local.tee 2
      i32.const -1
      i32.eq
      if  ;; label = @2
        i32.const 0
        local.set 2
        i32.const 1
        br 1 (;@1;)
      end
      local.get 2
      i32.const 16
      i32.shl
      local.tee 2
      i64.const 0
      i64.store offset=4 align=4
      local.get 2
      local.get 2
      local.get 1
      i32.const -65536
      i32.and
      i32.add
      i32.const 2
      i32.or
      i32.store
      i32.const 0
    end
    local.set 3
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 3
    i32.store)
  (func (;144;) (type 0) (param i32 i32) (result i32)
    i32.const 512)
  (func (;145;) (type 2) (param i32) (result i32)
    i32.const 1)
  (func (;146;) (type 0) (param i32 i32) (result i32)
    local.get 1)
  (func (;147;) (type 2) (param i32) (result i32)
    i32.const 0)
  (func (;148;) (type 8) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 2
      local.tee 4
      i32.const 15
      i32.le_u
      if  ;; label = @2
        local.get 0
        local.set 2
        br 1 (;@1;)
      end
      local.get 0
      i32.const 0
      local.get 0
      i32.sub
      i32.const 3
      i32.and
      local.tee 3
      i32.add
      local.set 5
      local.get 3
      if  ;; label = @2
        local.get 0
        local.set 2
        local.get 1
        local.set 6
        loop  ;; label = @3
          local.get 2
          local.get 6
          i32.load8_u
          i32.store8
          local.get 6
          i32.const 1
          i32.add
          local.set 6
          local.get 2
          i32.const 1
          i32.add
          local.tee 2
          local.get 5
          i32.lt_u
          br_if 0 (;@3;)
        end
      end
      local.get 5
      local.get 4
      local.get 3
      i32.sub
      local.tee 8
      i32.const -4
      i32.and
      local.tee 7
      i32.add
      local.set 2
      block  ;; label = @2
        local.get 1
        local.get 3
        i32.add
        local.tee 3
        i32.const 3
        i32.and
        local.tee 4
        if  ;; label = @3
          local.get 7
          i32.const 0
          i32.le_s
          br_if 1 (;@2;)
          local.get 3
          i32.const -4
          i32.and
          local.tee 6
          i32.const 4
          i32.add
          local.set 1
          i32.const 0
          local.get 4
          i32.const 3
          i32.shl
          local.tee 9
          i32.sub
          i32.const 24
          i32.and
          local.set 4
          local.get 6
          i32.load
          local.set 6
          loop  ;; label = @4
            local.get 5
            local.get 6
            local.get 9
            i32.shr_u
            local.get 1
            i32.load
            local.tee 6
            local.get 4
            i32.shl
            i32.or
            i32.store
            local.get 1
            i32.const 4
            i32.add
            local.set 1
            local.get 5
            i32.const 4
            i32.add
            local.tee 5
            local.get 2
            i32.lt_u
            br_if 0 (;@4;)
          end
          br 1 (;@2;)
        end
        local.get 7
        i32.const 0
        i32.le_s
        br_if 0 (;@2;)
        local.get 3
        local.set 1
        loop  ;; label = @3
          local.get 5
          local.get 1
          i32.load
          i32.store
          local.get 1
          i32.const 4
          i32.add
          local.set 1
          local.get 5
          i32.const 4
          i32.add
          local.tee 5
          local.get 2
          i32.lt_u
          br_if 0 (;@3;)
        end
      end
      local.get 8
      i32.const 3
      i32.and
      local.set 4
      local.get 3
      local.get 7
      i32.add
      local.set 1
    end
    local.get 4
    if  ;; label = @1
      local.get 2
      local.get 4
      i32.add
      local.set 3
      loop  ;; label = @2
        local.get 2
        local.get 1
        i32.load8_u
        i32.store8
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 2
        i32.const 1
        i32.add
        local.tee 2
        local.get 3
        i32.lt_u
        br_if 0 (;@2;)
      end
    end
    local.get 0)
  (table (;0;) 8 8 funcref)
  (memory (;0;) 17)
  (global (;0;) (mut i32) (i32.const 1048576))
  (global (;1;) i32 (i32.const 1060812))
  (global (;2;) i32 (i32.const 1060816))
  (export "memory" (memory 0))
  (export "init" (func 120))
  (export "bid_participant" (func 121))
  (export "getBidNft" (func 122))
  (export "getBidderInfo" (func 123))
  (export "getBidders" (func 124))
  (export "getBlockTokenIdentifier" (func 125))
  (export "getEndTime" (func 126))
  (export "getMaxAllowedParticipants" (func 127))
  (export "getNftSender" (func 128))
  (export "getParticipantAddrByName" (func 129))
  (export "getParticipantInfo" (func 130))
  (export "getParticipants" (func 131))
  (export "getRegisteringTax" (func 132))
  (export "register_participant" (func 133))
  (export "send_nft" (func 135))
  (export "transfer_nft" (func 136))
  (export "callBack" (func 137))
  (export "__data_end" (global 1))
  (export "__heap_base" (global 2))
  (elem (;0;) (i32.const 1) func 142 140 146 147 143 144 145)
  (data (;0;) (i32.const 1048576) "Endpoint can only be called by ownerincorrect number of ESDT transfersargument decode error (): function does not accept ESDT paymenttoo few argumentstoo many argumentswrong number of argumentsinput too longinput too shortEGLD.item.indexutf-8 decode errorstorage decode error: bad array length.lenmax_allowed_participantsend_timestampparticipant_addrparticipant_nameNFT amount should be 1\0a                You can't bid. Current bid has already ended. Wait for a new bid to startUser should be registered to be able to bidUser already has a bid on this actionWe need someone to sell an digipet before buyingParticipant already registeredWe need to complete previous bid(sell previous nft) before to send another nft for bidingnftSenderbidders_listparticipantsbid_by_addresstokenIdentifierregistering_taxparticipant_listparticipant_addr_by_namebigNft\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01")
  (data (;1;) (i32.const 1049618) "\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\04\04\04\04\04")
  (data (;2;) (i32.const 1049680) "allocation errorpanic occurred\00\00\01\00\00\00\04\00\00\00\04\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\05\00\00\00\06\00\00\00\07")
  (data (;3;) (i32.const 1049760) "\9c\ff\ff\ff"))
