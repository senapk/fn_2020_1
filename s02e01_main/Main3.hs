-- uma string, um double, uma lista de inteiros, um double

-- extract a sublist from [begin, end[
sublist begin end = take (end - begin) . drop begin

main = do
    --line <- getLine
    let line = "banana 3.4 4 5 6 7 3 4 5 6 7 4.5"

    let list = words line -- divide the input String into a list of Strings
        str = list !! 0
        dbl1 = read (list !! 1) :: Double
        strVet = sublist 2 ((length list) - 1) list -- pegando de 2 até -1
        intVet = map (read :: String -> Int) strVet -- converting from string to int
        dbl2 = read (list !! ((length list) - 1)) :: Double
    putStrLn $ str ++ " " ++ (show dbl1)
    putStrLn $ show intVet
    putStrLn $ show dbl2