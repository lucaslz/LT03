data Tree a = Leaf a | Branch (Tree a) (Tree a)

mapT :: (a -> b) -> Tree a -> Tree b
mapT f = g where
  g (Leaf x) = Leaf (f x)
  g (Branch left right) = Branch (g left) (g right)