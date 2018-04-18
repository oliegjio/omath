module OMath.Data.Vector where
  
  -- 3 and 2 dimensional vectors.
  data V = V2 Float Float
         | V3 Float Float Float deriving (Show, Read)