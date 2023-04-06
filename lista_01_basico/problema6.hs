modulo :: Float -> Float
modulo x =
    if x < 0 then
        -1 * x
    else
        x

trianguloValido :: Float -> Float -> Float -> Bool
trianguloValido a b c =
    if ((modulo (b - c)) < a) && (a < (b + c)) && 
        ((modulo (a - c)) < b) && (b < (a + c)) && 
        ((modulo (a - b)) < c) && (c < (a + b)) then
        True
    else
        False

main = do
    print("Digite o lado 1")
    lado1String <- getLine
    print("Digite o lado 2")
    lado2String <- getLine
    print("Digite o lado 3")
    lado3String <- getLine
    let lado1 = (read lado1String :: Float)
    let lado2 = (read lado2String :: Float)
    let lado3 = (read lado3String :: Float)
    print(trianguloValido lado1 lado2 lado3)
