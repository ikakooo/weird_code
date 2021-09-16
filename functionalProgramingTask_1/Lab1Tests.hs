module Lab1Tests where

import Lab1

import Test.HUnit -- see http://hackage.haskell.org/package/HUnit for
                  -- documentation if you want to write your own test
                  -- cases

-- Test Cases

-- -- toRNA
test1a = TestCase $ assertEqual "toRNA GATGGAACTTGACTACGTAAATT" "GAUGGAACUUGACUACGUAAAUU" (toRNA "GATGGAACTTGACTACGTAAATT")
test1b = TestCase $ assertEqual "toRNA GATTACA" "GAUUACA" (toRNA "GATTACA")

-- sumSquareDiff
test2a = TestCase $ assertEqual "sumSquareDiff 1" 0 (sumSquareDiff 1)
test2b = TestCase $ assertEqual "sumSquareDiff 10" 2640 (sumSquareDiff 10)
test2c = TestCase $ assertEqual "sumSquareDiff 100" 25164150 (sumSquareDiff 100)
test2d = TestCase $ assertEqual "sumSquareDiff 1000" 250166416500 (sumSquareDiff 1000)

-- collatz
test3a = TestCase $ assertEqual "collatz 3" 7 (collatz 3)
test3b = TestCase $ assertEqual "collatz 9" 19 (collatz 9)
test3c = TestCase $ assertEqual "collatz 12" 9 (collatz 12)
test3d = TestCase $ assertEqual "collatz 19" 20 (collatz 19)
test3e = TestCase $ assertEqual "collatz 27" 111 (collatz 27)

-- for running all the tests (type "runTests" within GHCi -- without
-- the quotes)

runTests = runTestTT $ TestList [test1a, test1b, test2a, test2b, test2c, test2d, test3a, test3b, test3c, test3d, test3e]


