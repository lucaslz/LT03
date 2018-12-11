data Tree a = Nil | Branch (Tree a) a (Tree a)

instance Show a => Show (Tree a) where
  show Nil = "Nil"
  show (Branch l v r) = "(" ++ show l ++ " " ++ show v ++ " " ++ show r ++ ")"