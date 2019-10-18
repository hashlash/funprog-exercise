The >> (then) operator

> main1 = putStr "Hello" >>
>         putStr " first " >>
>         putStr "world!" >>
>         putStr "\n"

Replace with do and braces

> main2 = do { putStr "Hello"
>            ; putStr " second "
>            ; putStr "world!"
>            ; putStr "\n" }

Replace with do and indentation

> main3 = do putStr "Hello"
>            putStr " third "
>            putStr "world!"
>            putStr "\n"
