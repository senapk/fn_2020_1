tell :: (Show a) => [a] -> String
tell [] = "A lista esta vazia"  
tell (x:[]) = "A lista tem apenas um elemento: " ++ show x  
tell (x:y:[]) = "A lista tem dois elementos: " ++ show x ++ " e " ++ show y  
tell (x:y:_) = "Esta lista esta longa demais. Veja os dois primeiros elementos: " ++ show x ++ " e " ++ show y

main = do
    