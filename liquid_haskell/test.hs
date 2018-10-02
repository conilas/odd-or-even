module Evens where

{-@ type Even = {v:Int | v mod 2 = 0} @-}
{-@ type Odd  = {v:Int | v mod 2 > 0} @-}

{-@ notEven :: Odd @-}
notEven = 7 

-- | notEven    :: Int
notEven 	   :: Int

