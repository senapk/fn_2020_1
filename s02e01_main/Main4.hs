main = do
    line <- getLine
    let list = words line -- divide the input String into a list of Strings
        intVet = map (read :: String -> Int) list -- converting from string to int
    putStrLn $ show (sum intVet)
