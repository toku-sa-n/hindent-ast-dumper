module Main(main) where

import qualified Data.ByteString as BS
import Text.Pretty.Simple
import Data.Either.Combinators
import HIndent

main :: IO()
main = BS.getContents >>= pPrint . fromRight' . testAst