module Functoriality (
  BiFunctor(..),
  Contravariant(..)) where


class BiFunctor bf where
  bimap :: (a -> c) -> (b -> d) -> bf a b -> bf c d
  bimap f g = first f . second g
  first :: (a -> c) -> bf a b -> bf c b
  first f = bimap f id
  second :: (b -> d) -> bf a b -> bf a d
  second = bimap id

-- Map morphism to oppsite morphism in target category
class Contravariant f where
  contramap :: (b -> a) -> f a -> f b
