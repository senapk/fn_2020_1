

main = do
    line <- getLine
    let vet = [read x :: Int | x <- words line]
    print $ estaOrdenado vet