module MyLib (someFunc) where

import Functoriality (BiFunctor(..), Contravariant(..))

data Prod a b = Prod { left :: a, right :: b }
instance BiFunctor Prod where
  bimap f g prod = Prod (f . left $ prod) (g . right $ prod)


someFunc :: IO ()
someFunc = putStrLn "someFunc"
