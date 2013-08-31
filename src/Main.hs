{-# LANGUAGE DeriveDataTypeable #-}
module Main where

import Hashing
import System.Console.CmdArgs

data Dirsum = Dirsum {
        files :: [String]
    } deriving (Show, Data, Typeable)

options = Dirsum {
        files = [] &= typFile &= args
    }

main = do
    arguments <- cmdArgs options
    hash <- hashFile $ head (files arguments)
    putStrLn (show hash)

