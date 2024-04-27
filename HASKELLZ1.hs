import Data.List (group)

findSequences :: String -> [String]
findSequences [] = []
findSequences str@(x:xs)
    | x == '1' = let (zeros, rest) = span (== '0') xs
                     (ones, remaining) = span (== '1') rest
                 in if length zeros > 0 && length ones > 0
                    then (x:zeros++ones):(findSequences remaining)
                    else findSequences xs
    | otherwise = findSequences xs

main :: IO ()
main = do
    let input = "101sdfsd100001"
        sequences = findSequences input
    mapM_ putStrLn sequences
