module Test.Main (main) where

import Prelude (bind, Unit)

import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE)
import Control.Monad.Eff.Exception (EXCEPTION)
import Control.Monad.Eff.Random (RANDOM)

import Tests.Data.Sequence          (sequenceTests)
import Tests.Data.Sequence.NonEmpty (nonEmptySequenceTests)
import Tests.Data.Sequence.Ordered  (orderedSequenceTests)

main :: forall a.
        Eff
          ( console :: CONSOLE
          , random :: RANDOM
          , err :: EXCEPTION
          | a
          )
          Unit
main = do
  sequenceTests
  nonEmptySequenceTests
  orderedSequenceTests
