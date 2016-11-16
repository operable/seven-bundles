#!/usr/bin/env runhaskell

import System.Environment
import Text.Printf
import Control.Monad

main = do
  argcIO <- getEnv "COG_ARGC"
  let argc = read argcIO :: Integer

  argv <- forM [0..argc - 1] $ \n -> do
    getEnv (printf "COG_ARGV_%d" n)

  putStrLn (unwords argv)
