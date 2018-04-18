module OMath.Numeric where
  
  power :: Float -> Int -> Float
  power x n = foldl (*) 1 (replicate n x)