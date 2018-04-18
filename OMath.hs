module OMath where
  
  import Data.Vector
  
  power :: Float -> Int -> Float
  power x n = foldl (*) 1 (replicate n x)
  
  -- Addition of vectors.
  (/+) :: V -> V -> V
  (V2 x1 y1) /+ (V2 x2 y2) = V2 (x1 + x2) (y1 + y2)
  (V3 x1 y1 z1) /+ (V3 x2 y2 z2) = V3 (x1 + x2) (y1 + y2) (z1 + z2)
  
  -- Dot product of vectors.
  (/*) :: V -> V -> Float
  (V2 x1 y1) /* (V2 x2 y2) = x1 * x2 + y1 * y2
  (V3 x1 y1 z1) /* (V3 x2 y2 z2) = x1 * x2 + y1 * y2 + z1 * z2
  
  -- Cross product of vectors.
  (//*) :: V -> V -> V
  (V3 x1 y1 z1) //* (V3 x2 y2 z2) = V3 (y1 * z2 - z1 * y2) (z1 * x2 - x1 * z2) (x1 * y2 - y1 * x2)
  
  -- Scalar triple product of vectors.
  tripleP :: V -> V -> V -> Float
  tripleP a b c = a /* (b //* c)
  
  abs :: V -> Float
  abs (V2 x y) = sqrt (x ^ 2 + y ^ 2)
  abs (V3 x y z) = sqrt (x ^ 2 + y ^ 2 + z ^ 2)
  
  