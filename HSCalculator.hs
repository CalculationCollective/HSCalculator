{-#LANGUAGE ScopedTypeVariables#-}

main :: IO()
main = do
    putStrLn "Enter the first number: "
    number1 :: Float <- readLn

    putStrLn "Choose between:\n1) Addition\n2) Subtraction\n3) Multiplication\n4) Division"
    calcType :: Int <- readLn

    putStrLn "Enter the second number: "
    number2 :: Float <- readLn

    case calcType of 
        1 -> putStrLn $ show $ number1 + number2
        2 -> putStrLn $ show $ number1 - number2
        3 -> putStrLn $ show $ number1 * number2
        4 -> putStrLn $ show $ number1 / number2
        _ -> putStrLn $ show ((show calcType) <> " is not a valid function")
