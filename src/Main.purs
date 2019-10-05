module Main where

-- import Prelude
-- import Effect (Effect)
-- import Effect.Console (log)
-- main :: Effect Unit
-- main = do
--   log "Hello sailor!"

import Data.List  (List, (:))
import Effect     (Effect)
import Effect.Aff (Aff)
-- import Effect.Aff as Aff
-- 
-- foreign import argv :: Array String
-- 
-- args :: List String
-- args = List.drop 2 $ List.fromFoldable argv
-- 
-- main :: Effect Unit
-- main = Aff.launchAff_ do
--   case args of
--     "generate" : List.Nil -> Generate.generate
--     "install" : rest -> install rest
--     "build" : rest -> build SpagoStyle rest
--     "build-nix" : rest -> build NixStyle rest
--     "help" : rest -> log help
--     List.Nil -> log help
--     _ -> do
--       log $ "Unknown arguments: " <> List.intercalate " " args
