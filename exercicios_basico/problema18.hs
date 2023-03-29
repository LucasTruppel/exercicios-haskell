operacao :: String -> Float -> Float -> Float
operacao operador x y =
    if (operador == "+") then
        x + y
    else if (operador == "-") then
        x - y
    else if (operador == "*") then
        x * y
    else
        x / y

main = do
    print ("Escreva o operador")
    operador <- getLine
    print ("Escreva x:")
    xString <- getLine
    print ("Escreva y:")
    yString <- getLine
    let x = (read xString :: Float)
    let y = (read yString :: Float)
    print("Resultado da operacao:")
    print (operacao operador x y)
    