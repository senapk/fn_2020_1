


-- O tipo Maybe é implementado da seguinte forma no sistema
-- data Maybe a = Nothing | Just a  

-- Nothing e Just são construtores do tipo Maybe, que é um tipo parametrizado

-- Veja no ghci quais os tipos das entradas
-- Nothing
-- Just 5
-- Just "arco"

-- Vamos fazer uma função que recebe um vetor de inteiros e um valor e retorna a primeira posição desse valor no vetor

-- findVet :: Int -> [Int] -> Maybe Int -- vetor, valor, posicao
findVet :: (Eq a) => a -> [a] -> Maybe Int -- vetor, valor, posicao
findVet value xs = if length posicoes > 0 then Just $ head posicoes else Nothing
        where posicoes = [snd par | par <- zip xs [0..], fst par == value]

-- E se nossa função vale não só para inteiros, mas para qualquer coisa que pode ser comparada?


-- Vamos fazer uma função que transforma um Maybe Int em um Int
mi2i :: Maybe Int -> Int
mi2i x = case x of Nothing -> -1
                   Just x -> x

-- Nós podemos criar alias para tipos
type PhoneBook = [(String,String)]  
type Istring = [Char]

-- Podemos também criar tipos parametrizados, o tipo abaixo define um vetor de chaves valor
-- Aqui k e v são tipos
type AssocList k v = [(k,v)]  
-- AssocList NÃO é um tipo, ele é um construtor que pega dois tipos e gera um tipo concreto
-- AssocList Int String é um tipo concreto

-- Como seria uma função que procura numa lista associativa e retona um valor SE existir uma chave
getOnMap :: (Eq k) => k -> AssocList k v -> Maybe v
getOnMap value map = if null posicoes then Nothing else Just $ head posicoes  -- outra forma de testar se uma lista é vazia
            where posicoes = [v | (k, v) <- map, k == value] -- outra forma de desempacotar uma tupla

-- getOnMap 3 [(5, "bacia"), (3,"ovo"), (4,"jaca")]


