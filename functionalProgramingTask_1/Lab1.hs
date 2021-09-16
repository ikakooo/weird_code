module Lab1(toRNA, sumSquareDiff, collatz) where

-- TODO: implement functions below
------          დავალება 01

  data Nucleotide = A | C | G | T | U deriving (Show)
  data Strand = DNA [Nucleotide]
              | RNA [Nucleotide]
              deriving (Show)
  toRNA :: String -> String
  toRNA str = case (transcribe . readDNA) str of
                Just (RNA rna) -> map nucToChar rna
                _              -> "error: invalid DNA string"
  readDNA :: String -> Maybe Strand
  readDNA str = case sequence (map readDNANuc str) of
                    Nothing -> Nothing
                    Just s  -> Just (DNA s)
    where readDNANuc 'A' = Just A
          readDNANuc 'C' = Just C
          readDNANuc 'G' = Just G
          readDNANuc 'T' = Just T
          readDNANuc _   = Nothing
  transcribe :: Maybe Strand -> Maybe Strand
  transcribe Nothing = Nothing
  transcribe (Just (DNA s)) = Just (RNA (map transcribeDNA s))
  transcribe (Just (RNA s)) = Just (DNA (map transcribeRNA s))
  transcribeDNA :: Nucleotide -> Nucleotide
  transcribeDNA T     = U
  transcribeDNA other = other
  transcribeRNA :: Nucleotide -> Nucleotide
  transcribeRNA U     = T
  transcribeRNA other = other
  nucToChar :: Nucleotide -> Char 
  nucToChar A = 'A'
  nucToChar C = 'C'
  nucToChar G = 'G'
  nucToChar T = 'T'
  nucToChar U = 'U'

  

------          დავალება 02
    
  
  sumSquareDiff :: Int -> Int 
  sumSquareDiff n = sum [ 1..n] ^ 2 - sum [ x ^ 2 | x <- [1..n]]

   

  main :: IO ()
  x = sumSquareDiff 10
  --main = print  x


------          დავალება 03
  collatz :: Int -> Int
  collatz num = length (collatzSequence num) - 1

  collatzN :: Int -> Int
  collatzN 1 = 1
  collatzN n =
    if even n
      then n `div` 2
      else 3 * n + 1

  collatzSequence :: Int -> [Int]
  collatzSequence n =
   if n == 1
     then [1]
      else n : collatzSequence (collatzN n)    



 
  xn = collatz 12
  main = print  xn     