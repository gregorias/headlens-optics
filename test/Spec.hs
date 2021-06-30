module Spec (main) where

import Control.Lens.Properties (isTraversal)
import Lib (headAffineTraversal)
import Optics (traverseOf)
import Relude
import Test.Hspec (
  SpecWith,
  hspec,
  it,
 )
import Test.QuickCheck (property, withMaxSuccess)

main :: IO ()
main = hspec tests

tests :: SpecWith ()
tests = do
  it "headAffineTraversal satisfies traversal laws" $ do
    property $ withMaxSuccess 10000 $ isTraversal (traverseOf (headAffineTraversal @Int))
