inverter :: [t] -> [t]
inverter [] = []
inverter (a:b) = addNoFim a (inverter b)

addNoFim :: t -> [t] -> [t]
addNoFim a [] = [a]
addNoFim a (b:c)  = b : (addNoFim a c)

main = do
    print (inverter [1..10])
