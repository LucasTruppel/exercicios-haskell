mdc :: Int -> Int -> Int
mdc a b = 
    if (a == 0) then
        b
    else
        (mdc(mod b a) a)

coprimos :: Int -> Int -> Bool
coprimos x y =
    if ((mdc x y) == 1) then
        True
    else
        False

phi :: Int -> Int -> Int
phi n i =
    if (i == n) then
        0
    else if (coprimos n i) then
        1 + (phi n (i + 1))
    else
        (phi n (i + 1))

totienteDeEuler :: Int -> Int
totienteDeEuler n = (phi n 1)

main = do
    print("Digite n:")
    nString <- getLine
    let n = (read nString :: Int)
    print("Totiente de Euler:")
    print(totienteDeEuler n)
