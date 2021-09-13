import Control.Lens

--main = putStrLn "No errors!"
myFruit = ["banana", "apple", "kiwi", "orange"]
squareMe x = x * x

--main = putStrLn . show $ squareMe 8

main :: IO ()
main = print (myFruit ^? element 3 )
--main = print (squareMe 2)
-- primes = filterPrime [0..10]
--   where filterPrime (p:xs) =
--           p : filterPrime [x | x <- xs, x `mod` p /= 0]

-- main = putStrLn primes          


--main :: IO ()    -- This says that main is an IO action.
--main = return () -- This tells main to do nothing.          