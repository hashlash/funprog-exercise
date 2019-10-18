class Bounded a
minBound maxBound

class Enum a
succ pred toEnum fromEnum enumFrom enumFromThen

class Eq a
(==) (/=)

class Eq a => Ord a
compare (<) (<=) (>) (>=) max min

class Num a
(+) (-) (*) negate abs signum

class (Num a, Ord a) => Real a

class (Real a, Enum a) => Integral a
quot rem div mod quotRem divMod

class Num a => Fractional a
(/) recip

class Fractional a => Floating a
pi exp log sqrt (**) logBase sin cos tan asin acos atan sinh cosh tanh asinh acosh atanh


data Word

data Int

data Integer


type Rational
