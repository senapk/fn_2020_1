soma x y = x + y

--1 1
--2,3,4,4,4

key last qtd = if qtd /= 1 then [[qtd, last]] else [[last]]

compac' [] last qtd = key last qtd
compac' (x:xs) last qtd = if x == last
                         then compac' xs last (qtd + 1)
                         else key last qtd ++ compac' xs x 1

compac (x:xs) = compac' xs x 1
{--
soImparesTeste = do
    print $ soImpares [1..10] == [1,3,5,7,9]
    print $ soImpares [1..20] == [1,3..20]
    print $ soImpares [-10..20] == [-9,-7..20]

main = do
    line <- getLine
    let vet = [read x :: Int | x <- words line]
    print $ soImpares vet
--}