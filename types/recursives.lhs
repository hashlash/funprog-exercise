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
