{-# LANGUAGE ExistentialQuantification, RankNTypes #-}
module Data.Exists.Constrained where

import Data.Typeable

-- | Dependent sum
data E c a = ∀ k . (Typeable k, c k) => E { unE :: a k }

liftE :: (∀ k . c k => a k -> b k) -> E c a -> E c b
liftE f (E a) = E (f a)
