main = do
    putStrLn "Digite um inteiro e um float, um por linha"
    i' <- getLine -- some integral input; it will be received as a String
    d' <- getLine -- some floating input; also will be received as a String
    let i = read i' :: Int -- i is an Int now
        d = read d' :: Double -- d is a Double now
    putStrLn "" -- so that GHC doesn't complain
    --putStrLn ("" ++ show i ++ " " ++ show d) -- to show the variables