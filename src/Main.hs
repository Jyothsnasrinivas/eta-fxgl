module Main where

import Java
import Types
import System.Environment (getArgs)

main :: IO ()
main = do
  args <- getArgs
  let args' = toJava (map toJava args :: [JString])
  launch (getClass (Proxy :: Proxy BasicSampleApp)) args'
