module Hashing where

import Data.Digest.Murmur64

import qualified Data.ByteString.Lazy as LB


hashFile path = do
    contents <- LB.readFile path
    let seedHash = hash64 ""
    return $ LB.foldrChunks hash64Add seedHash contents


