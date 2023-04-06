primeiros :: Int -> [t] -> [t]
primeiros _ [] = []
primeiros n lista = primeirosRec n 0 lista []

primeirosRec :: Int -> Int -> [t] -> [t] -> [t]
primeirosRec _ _ [] nova_lista = inverter nova_lista
primeirosRec n contador (a:b) nova_lista = 
    if contador >= n then
        inverter nova_lista
    else
        primeirosRec n (contador + 1) b (a:nova_lista)

inverter :: [t] -> [t]
inverter [] = []
inverter (a:b) = addNoFim a (inverter b)

addNoFim :: t -> [t] -> [t]
addNoFim a [] = [a]
addNoFim a (b:c)  = b : (addNoFim a c)

main = print (primeiros 5 [1..10])
