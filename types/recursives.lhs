> data List' a = Empty' | Cons a (List' a) deriving (Show, Read, Eq, Ord)

> infixr 5 :-:
> data List a = Empty | a :-: (List a) deriving (Show, Read, Eq, Ord)  
