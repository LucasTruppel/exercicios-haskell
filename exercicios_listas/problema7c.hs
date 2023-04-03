alunos :: [(Int, String, Float)]
alunos = [(1, "Ana", 3.4), (2, "Bob", 6.7), (3, "Tom", 7.6)]

duplasPossiveisAux :: [(Int, String, Float)] -> [(Int, String, Float)] -> [(String, String)]
duplasPossiveisAux alunos1 alunos2 = 
    [(nome1, nome2) | (id1, nome1, media1) <- alunos1, (id2, nome2, media2) <- alunos2, id1 < id2]

duplasPossiveis :: [(Int, String, Float)] -> [(String, String)]
duplasPossiveis alunos = duplasPossiveisAux alunos alunos

main = do
    print (duplasPossiveis alunos)
