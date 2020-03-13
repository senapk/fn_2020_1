filtrarImpares = filter odd

filtrarImpares' xs = [x | x <- xs, odd x]

gangorra a b c d
  | a * b == c * d = 0
  | a * b > c * d = -1
  | otherwise = 1

main = do
    -- x <- readLn :: IO Int
    line <- getLine
--  let lista = [read x :: Int | x <- words line]
    let lista = map (read :: String->Int) (words line)
    print lista
