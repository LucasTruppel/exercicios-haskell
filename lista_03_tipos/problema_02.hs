data Forma = Circulo Float | Retangulo Float Float | Triangulo Float Float 

area :: Forma -> Float
area (Circulo r) = pi * r * r
area (Retangulo b a) = b * a
area (Triangulo b a) = b * a / 2

main = do 
    print (area (Triangulo 3 4))
