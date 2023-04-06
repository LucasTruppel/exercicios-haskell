data Ponto = Ponto2D Float Float | Ponto3D Float Float Float

distancia :: Ponto -> Ponto -> Float
distancia (Ponto2D _ _) (Ponto3D _ _ _) = -1.0
distancia (Ponto3D _ _ _) (Ponto2D _ _) = -1.0
distancia (Ponto2D x1 y1) (Ponto2D x2 y2) = sqrt ((x2-x1)**2 + (y2-y1)**2)
distancia (Ponto3D x1 y1 z1) (Ponto3D x2 y2 z2) = sqrt ((x2-x1)**2 + (y2-y1)**2 + (z2-z1)**2)

main = do
    print (distancia (Ponto2D 3 4) (Ponto2D 1 5))
    print (distancia (Ponto3D 3 4 5) (Ponto3D 1 5 0))
