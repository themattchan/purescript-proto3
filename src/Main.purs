module Main where

import Prelude
import Effect (Effect)
import Effect.Console (log)
import Data.ArrayBuffer as Buf

-- this is the runtime library for deserialising protobuf messages.
-- it is expected to be able to ingest and produce messaages in:
-- 1. protobuf binary wire format
-- 2. jsonpb format.
-- assume that the purescript types are produced by `proto3-suite`.


class ProtoSerde a where
  encode :: a -> Buf.UInt8Array
  decode :: Buf.UInt8Array -> a

-- need to write: builder for uint8array
-- reader from uint8array

-- get code generator to make instances for generated datatypes.

main :: Effect Unit
main = do
  log "Hello sailor!"
