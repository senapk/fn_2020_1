import Data.Map as Map

mvalues :: Map Int String
mvalues = fromList [(5, "abaca"), (3, "casfs")]

-- pegando um valor do mapa 
chaveInvalida :: String
chaveInvalida = mvalues ! 1 -- gerando erro

chaveValida :: String
chaveValida = mvalues ! 5

-- Mais exemplos em https://hackage.haskell.org/package/containers-0.4.0.0/docs/Data-Map.html


z :: Maybe String
z = Map.lookup 3 mvalues

w :: Map Int String
w = (delete 3) . (insert 8 "rex") $ mvalues -- inserindo nova chave



-- exemplo do site
data LockerState = Taken | Free deriving (Show, Eq)
type Code = String  
type LockerMap = Map.Map Int (LockerState, Code)  


lockerLookup :: Int -> LockerMap -> Either String Code  
lockerLookup lockerNumber map =   
    case Map.lookup lockerNumber map of   
        Nothing -> Left $ "Locker number " ++ show lockerNumber ++ " doesn't exist!"  
        Just (state, code) -> if state /= Taken   
                                then Right code  
                                else Left $ "Locker " ++ show lockerNumber ++ " is already taken!" 

lockers :: LockerMap  
lockers = Map.fromList   
    [(100,(Taken,"ZD39I"))  
    ,(101,(Free,"JAH3I"))  
    ,(103,(Free,"IQSA9"))  
    ,(105,(Free,"QOTSA"))  
    ,(109,(Taken,"893JJ"))  
    ,(110,(Taken,"99292"))  
    ]  


-- ghci> lockerLookup 101 lockers  
-- Right "JAH3I"  
-- ghci> lockerLookup 100 lockers  
-- Left "Locker 100 is already taken!"  
-- ghci> lockerLookup 102 lockers  
-- Left "Locker number 102 doesn't exist!"  
-- ghci> lockerLookup 110 lockers  
-- Left "Locker 110 is already taken!"  
-- ghci> lockerLookup 105 lockers  
-- Right "QOTSA" 

    