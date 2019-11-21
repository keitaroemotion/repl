module Main where

import Prelude
import Data.Array             (reverse)
import Data.Either            (Either(..))
import Data.Maybe             (Maybe(..))
import Effect                 (Effect)
import Effect.Console         (logShow, log)
import Node.Yargs.Applicative (flag, yarg, runY)
import Node.Yargs.Setup       (example, usage)

app :: Array String -> Boolean -> Effect Unit
app [] _     = pure unit
app ss false = logShow ss
app ss true  = logShow (reverse ss)

-- $0 ... application name

main :: Effect Unit
main = do
  let setup = usage "$0 --from [/path/to/rename] --to [new filename]"
              <> example "$0 --from [/path/to/rename] --to [new filename]" ""
  log "aaa"

  runY setup $ app <$> yarg 
                           "from"
                           ["to"]
                           (Just  "A to"                             )
                           (Right "At least one argument is required") 
                           false

                   <*> flag "r" []          (Just "Reverse the words")
