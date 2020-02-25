main = do
    inp <- getLine -- the input is an Int, a String and a Double, like: 4 derp 2.7
    let list = words inp -- divide the input String into a list of Strings
        val = read (list !! 0) :: Int -- val equals 4, its type is Int
        str = list !! 1 -- str is a String ("derp"), no additional action required
        dbl = read (list !! 2) :: Double -- dbl equals 2.7 and is a Double
    putStrLn ("-->" ++ (show val) ++ " " ++  str ++ " " ++ (show dbl))