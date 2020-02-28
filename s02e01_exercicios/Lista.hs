-- [1, 2, 3, 4, 5, 6, 7, 8] arrancar 3 xs [1, 2, 3, 4, 5]
-- drop n xs: remove n primeiros
-- take n xs: obtem os n primeiros
-- init xs: remove o ultimo
-- tail xs: remove o primeiro
-- head xs: obtem o primeiro elemento
-- last xs: obtem o ultimo elemento
-- reverse xs: reverte a lista
-- length xs: obtem o tamanho
-- null xs: se esta vazia
-- sum xs: soma todos
-- maximum, minimum, product


removerDoisDeCadaBanda = drop 2 . reverse . drop 2 . reverse
removerDoisModo2 xs = drop 2(take (length xs - 2) xs)

-- sublista inicio fim lista
-- sublista 2 5 [0..10]
-- [2, 3, 4]

-- sublista 2 -2 [0..10]
-- [2, 3, 4, 5, 6, 7, 8]


