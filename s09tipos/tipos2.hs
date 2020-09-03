
-- buscaPos' :: Int -> [Int] -> Int -> Int
-- buscaPos' v [] ind   =  -1
-- buscaPos' v (x:xs) ind =  if v == x then ind else buscaPos' v xs (ind + 1) 

-- buscaPos :: Int -> [Int] -> Int -- valor vet primeira posicao
-- buscaPos valor vet = buscaPos' valor vet 0

buscaPos :: (Eq a) => a -> [a] -> Maybe Int -- valor vet primeira posicao
buscaPos valor vet = if null posicoes then Nothing else Just $ head posicoes
                where posicoes = [p | (v, p) <- zip vet [0..], v == valor]


maybeInt2Int :: Maybe Int -> Int
maybeInt2Int x = case x of Nothing -> -1
                           Just x  -> x

-- buscaPos 5 [3,1,2,3,5,7]

type AssocList k v = [(k,v)]

-- [(3, "uva"), (5, "banana"), (2, "chiclete")] -- AssocList Int String

getValue :: Int -> AssocList Int String -> Maybe String
getValue key mapa = if null posicoes then Nothing else Just $ head posicoes
        where posicoes = [v | (k, v) <- mapa, k == key]