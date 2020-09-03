import Data.Map as Map

x :: Map String Double
x = fromList [("ovo", 0.50), ("uva", 5.50), ("piper", 0.10)]

y :: Map [Char] Double
y =  delete "ovo" x

z = insert "banana" 5.6 y

b :: Maybe Double
b = Map.lookup "ciriguela" z

talvez :: Either String Int
--talvez = Left "banana"
talvez = Right 8

certeza :: Either String Int -> Int
certeza x = case x of Left a -> length a
                      Right b -> b

certeza2 :: Either String Int -> String
certeza2 x = case x of Left a -> a
                       Right b -> show b

data Calc = Calc {battery :: Int} deriving (Show)

divide :: Calc -> Int -> Int -> (Calc, Either String Int)
divide calc x y
                | bat == 0 = (calc, Left "bateria vazia")
                | y == 0 = (calc, Left "nao eh possivel dividir por 0")
                | otherwise = (Calc (bat - 1), Right $ div x y)
            where bat = battery calc