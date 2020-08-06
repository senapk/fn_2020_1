quicksort :: (Ord a) => [a] -> [a]  
quicksort [] = []
quicksort (x:xs) = 
    let smallerSorted = quicksort [a | a <- xs, a <= x]  
        biggerSorted = quicksort [a | a <- xs, a > x]  
    in  smallerSorted ++ [x] ++ biggerSorted  

------------------------------------

quicksort1 :: Ord a => [a] -> [a]
quicksort1 [] = []
quicksort1 (x:xs) = menorIguais ++ [x] ++ maiores  
    where   menorIguais = quicksort [a | a <- xs, a <= x]  
            maiores = quicksort [a | a <- xs, a > x]  

------------------------------
primeiro :: [a] -> a
primeiro = head

-- sem o parametro da direita
primeiro1 :: [a] -> a
primeiro1 = head

segundo = head . tail

------------------------
-- Toda função em Haskell oficialmente recebe apenas um parâmetro. 
-- Então, como foi possível quando nós definimos e usamos várias 
-- funções que tinham mais de um parâmetro até aqui? 
-- Bom, com um truque muito esperto! 
-- Todas as funções que aceitaram vários parâmetros até aqui eram funções curried. 

multThree :: (Num a) => a -> a -> a -> a  
multThree x y z = x * y * z  

m4 :: Integer -> Integer -> Integer
m4 = multThree 4

m43 :: Integer -> Integer
m43 = m4 3

-------------------------------------

maiusculo x = elem x ['A'..'Z']

--funcao parcial
maiusculo1 :: Char -> Bool
maiusculo1 = (`elem` ['A'..'Z'])


divideByTen :: Fractional a => a -> a
divideByTen x = x / 10

--falta o começo
divideByTen1 :: Fractional a => a -> a
divideByTen1  = (/10)

--falta o fim
dezPor :: Fractional a => a -> a
dezPor = (10/)

-- --------------
comparar x y = compare x y

-- faca a funcao comparar com 100
-- compararCom100 4 -> LT

-- ----------------------

applyTwice :: (a -> a) -> a -> a  
applyTwice f x = f (f x)

-- applyNvezes n f x = 

-- applyTwice (+3) 10  

{-
aplynvezes 0 f x = f x
aplynvezes 1 f x = f x  
aplynvezes n f x = aplynvezes n-1 f (f x)
-}

-- (henricky)
applyNvezes 0 f x = x
applyNvezes 1 f x = f x
applyNvezes n f x = f(applyNvezes (n-1) f x)

nomes = ["david", "henrique", "kassiane", "marcelo"]
nletras = [length nome | nome <- nomes] 

juncao = [ tupla | tupla <- zip nomes nletras]

juntos = zipWith (\s i -> s ++ " " ++ show(i)) nomes nletras

estaOrdenada [] = True
estaOrdenada [x] = True
estaOrdenada (x:xs) = if x > head xs then False else estaOrdenada xs 

main = do
    line <- getLine
    let vet = [read x :: Int | x <- words line]
    print $ estaOrdenada vet