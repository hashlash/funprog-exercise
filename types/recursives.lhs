Recursive List

> data List' a = Empty' | Cons a (List' a) deriving (Show, Read, Eq, Ord)

> infixr 5 :-:
> data List a = Empty | a :-: (List a) deriving (Show, Read, Eq, Ord)

> infixr 5 .++
> (.++) :: List a -> List a -> List a
> Empty    .++ ys = ys
> (x:-:xs) .++ ys = x :-: (xs .++ ys)


Recursive Tree

> data Tree' a = None'
>              | Node' { node :: a
>                      , leftSubTree :: Tree' a
>                      , rightSubTree :: Tree' a
>                      }
>              deriving Show

> data Tree a = EmptyTree
>             | Node a (Tree a) (Tree a)
>             deriving Show

> singleNodeTree :: a -> Tree a
> singleNodeTree a = Node a EmptyTree EmptyTree

> treeInsert :: Ord a => a -> Tree a -> Tree a
> treeInsert x EmptyTree = singleNodeTree x
> treeInsert x (Node a left right)
>     | x == a = Node x left right
>     | x < a  = Node a (treeInsert x left) right
>     | a < x  = Node a left (treeInsert x right)
