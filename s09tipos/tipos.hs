-- data Point = Point Float Float deriving (Show) -- x y

-- data Shape = Circle Point Float -- center radius 
--            | Rectangle Point Point -- pos dimension
--             deriving (Show)

-- dist :: Point -> Point -> Float
-- dist (Point x1 y1) (Point x2 y2) = sqrt $ (px - cx)^2 + (py - cy)^2

-- inside :: Point -> Shape -> Bool 
-- inside (Point px py) (Circle (Point cx cy) radius) 
--       = (px - cx) ^ 2 + (py - cy)^2 <= radius

-- inside :: Point -> Shape -> Bool 
-- inside p1 (Circle p2 radius) = dist p1 p2 <= radius

-- algoritmo em c
-- if (x > x1 and x < x2 and y > y1 and y < y2) 
--         return true; 

-- inside (Point px py) (Rectangle (Point rx ry ) (Point dx dy))
--       = (px >= rx && px <= (rx + dx) && py >= ry && py <= (ry + dy)

data Point = Point {x :: Float, y :: Float} deriving (Show) 


data Shape = Circle {center :: Point, radius :: Float} 
           | Rectangle {pos :: Point, dim :: Point} deriving (Show)

-- inside :: Point -> Shape -> Bool 
-- inside point (Circle center radius) = (px - cx) ^ 2 + (py - cy) <= radius^2
--       where px = x point
--             py = y point
--             cx = x center
--             cy = y center

inside :: Point -> Shape -> Bool 
inside point circle = (px - cx) ^ 2 + (py - cy) <= r ^ 2
      where px = x point
            py = y point
            cx = x $ center circle
            cy = y $ center circle
            r = radius circle
