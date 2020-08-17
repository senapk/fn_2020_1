-- Lembrando de funções parciais
divideByTen :: Fractional a => a -> a
divideByTen x = x / 10

--falta o começo
divideByTen1 :: Fractional a => a -> a
divideByTen1  = (/10)

--falta o fim
dezPor :: Fractional a => a -> a
dezPor = (10/)

dividido :: Double -> Double -> Double
dividido = (/)

soma = (++)

abacaxil = foldl (++) "azedo" ["aba", "ca", "xi"]
-- azedoabacaxi

abacaxir = foldr (\x y -> x ++ y) "azedo" ["aba", "ca", "xi"]
-- abacaxiazedo

-- o menos tem que ser entre parênteses
cincol = foldl (-) 5 [1,2,3]
-- produz (((5 - 1) - 2) - 3) = -1

--
cincor = foldr (-) 5 [1,2,3]
-- produz (1 - (2 - (3 - 5))) == -3


-- contar todos os ímpares

acumula acc y = acc + if mod y 2 == 0 then 0 else 1

contar_impares xs = foldl acumula 0 xs

-- 0 [1,1,2,4,5]
-- ((((((0 + 1) + 1) + 0) + 0) + 1)