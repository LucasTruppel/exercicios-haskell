apagar :: Int -> [t] -> [t]
apagar _ [] = []
apagar n lista = apagarRec n 0 lista []

apagarRec :: Int -> Int -> [t] -> [t] -> [t]
apagarRec _ _ [] nova_lista = inverter nova_lista
apagarRec n contador (a:b) nova_lista = 
    if contador >= n then
        apagarRec n (contador + 1) b (a:nova_lista)
    else
        apagarRec n (contador + 1) b nova_lista

inverter :: [t] -> [t]
inverter [] = []
inverter (a:b) = addNoFim a (inverter b)

addNoFim :: t -> [t] -> [t]
addNoFim a [] = [a]
addNoFim a (b:c)  = b : (addNoFim a c)

main = print (apagar 5 [1..10])
