main = do
    putStrLn "Digite nome e peso, um por linha please"
    nome <- getLine --string
    peso' <- getLine --string
    let peso = read peso' :: Float
    putStrLn ""
    --putStrLn $ "nome: " ++ nome ++ " e peso: " ++ show peso
