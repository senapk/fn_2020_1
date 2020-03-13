quick [] = []
quick (x:xs) = menores ++ [x] ++ maiores
    where menores = quick [y | y <- xs, y <= x]
          maiores = quick [y | y <- xs, y > x]


--1 2 3 4 3 3 3 3 2 2 2 2 1
--unique [] = []
--unique (x:xs) = (if x `elem` xs then [] else [x]) ++ unique xs

--1 2 3 4 3 3 3 3 2 2 2 2 1
--[[1, 2], [2, 5], [3, 5], [4, 1]]


{- unicos = []
for x in lista:
    if not x in unicos:
        unicos.append(x)
 -}

{- 
unique [] uni = uni
unique (x:xs) uni = if x `elem` uni
                    then unique xs uni
                    else unique xs (uni ++ [x]) 
-}

{-
indexof' [] _ _ = -1
indexof' (x:xs) y n = if x == y then n else indexof' xs y (n + 1)
indexof xs x = indexof' xs x 0

unique [] uni = uni
unique (x:xs) uni = if not (null [t | t <- uni, fst t == x])
                    then unique xs uni
                    else unique xs (uni ++ [(x, 1)])

bolha [] = []
bolha lista = bolhaOrd lista (length lista)

bolhaOrd lista 0 = lista
bolhaOrd lista n = bolhaOrd (troca lista) (n-1)

troca [x] = [x]
troca (x:y:zs)
        | x > y = y : troca (x:zs)
        | otherwise = x : troca (y:zs)

soma4 = (+4)
vezes2 = (*2)
mais x = (+x)

int soma(int x, int y, int z){
    return x + y + z;
}

bind soma5(y, z) -> soma(5, y, z)

vetor_funcoes functional<>
vetor_funcoes.add(bind(soma, 5, 4, 2))
-}

conta [] ult qtd = [[qtd, ult]]
conta (x:xs) ult qtd = if x == ult
                    then []  ++ conta xs x (qtd + 1)
                    else key ++ conta xs x 1
                where key = if qtd > 1 then [[qtd, ult]] else [[ult]]

cont (x:xs) = conta xs x 1 
