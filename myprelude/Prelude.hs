module Prelude (module X, Foo (..)) where

import Control.Monad as X (return)
import Data.List as X ((++))
import System.IO as X (FilePath, IO)


data Foo = Foo
