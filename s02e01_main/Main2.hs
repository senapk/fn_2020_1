main = do
    putStrLn "Digite um int, uma string e um double"
    inp <- getLine -- the input is an Int, a String and a Double, like: 4 derp 2.7
    let list = words inp -- divide the input String into a list of Strings
    putStrLn $ "tamanho " ++ (show (length list))
    let val = read (list !! 0) :: Int -- val equals 4, its type is Int
    let str = list !! 1 -- str is a String ("derp"), no additional action required
    let dbl = read (list !! 2) :: Double -- dbl equals 2.7 and is a Double
    putStrLn $ "-->" ++ (show val) ++ " " ++  str ++ " " ++ (show dbl)