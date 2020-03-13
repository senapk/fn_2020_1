menor x y = min xis ipisulon
    where xis = x
          ipisulon = y

minde3 x y z = min x $ min y z

fat 0 = 1
fat n = n * fat (n - 1) -- raiz


fat' n = product [1..value] -- nutella
        where value = if n > 0 then n else -n


fib 0 = 0
fib 1 = 1
fib n = fib (n - 1) + fib (n - 2)


-- indice xs ind = xs !! ind
elemento x xs = head $ drop x xs

eleme 0 xs = head xs
eleme n (_:xs) = eleme (n - 1) xs

-- pertence xs x = x `elem` xs
-- pertence xs x = length ([x | y <- xs, y == x]) > 0

pertence y [] = False
--pertence y (x:xs) = (x == y) || pertence y xs
pertence y (x:xs)
          | x == y = True
          | otherwise = pertence y xs

--total xs = sum([1 | _ <- xs])
--total xs = sum(map (\_ -> 1) xs)
--total xs = sum(map (const 1) xs)

total [] = 0
total (_:xs) = 1 + total xs

--len' [] n = n
--len' xs n = len' (init xs) (n+1)
--len xs = len' xs 0

iguais [] [] = True
iguais _ [] = False
iguais [] _ = False
iguais (x:xs) (z:zs)
        | x /= z = False
        | otherwise = iguais xs zs

comparar [] [] = 0
comparar _ [] = 1
comparar [] _ = -1
comparar (x:xs) (z:zs)
        | x == z = comparar xs zs
        | x < z = -1
        | otherwise = 1 
