module Main where

import Effect         (Effect)
import Effect.Aff     (Aff)
import Effect.Console (log)
import Data.List      (List, (:))
import Data.List      as List
import Prelude

foreign import argv :: Array String

args :: List String
args = List.drop 2 $ List.fromFoldable argv

main :: Effect Unit
main = do
    case args of
        "install": rest -> log "aaa"
        List.Nil        -> log "help"
        _               -> do
                               log $ "Unknown arguments: " <> List.intercalate " " args
