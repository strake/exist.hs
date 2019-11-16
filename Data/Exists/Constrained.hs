{-# LANGUAGE ExistentialQuantification #-}
module Data.Exists.Constrained where

import Data.Typeable

-- | Dependent sum
data E c a = ∀ k . (Typeable k, c k) => E { unE :: a k }
