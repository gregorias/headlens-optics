{-# OPTIONS_GHC -Wno-typed-holes #-}

module Lib (
  headAffineTraversal,
) where

import Optics (AffineTraversal', atraversal)
import Relude

headAffineTraversal :: AffineTraversal' [a] a
headAffineTraversal = atraversal matcher updater
 where
  matcher [] = Left []
  matcher (x : _) = Right x
  updater [] _ = []
  updater (_ : ss) b = b : ss
