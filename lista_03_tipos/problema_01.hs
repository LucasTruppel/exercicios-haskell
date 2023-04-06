type Nome = String
type Disciplina = String
type Nota1 = Int
type Nota2 = Int
type Nota3 = Int
type Aluno = (Nome, Disciplina, Nota1, Nota2, Nota3)

aluno :: Int -> Aluno
aluno 1 = ("Laura", "Maquinas agricolas", 10, 10, 10)
aluno 2 = ("Laura", "Paradigmas de programacao", 10, 10, 10)
aluno 3 = ("Luffy", "Paradigmas de programacao", 6, 7, 8)
aluno 4 = ("Ze gotinha", "Paradigmas de programacao", 0, 0, 0)

getNome :: Aluno -> Nome
getNome (n, _, _, _, _) = n

getMedia :: Int -> Float
getMedia id = (fromIntegral (nota1 + nota2 + nota3)) / 3
    where
        (_, _, nota1, nota2, nota3) = aluno id

getMediaTurma :: Int -> Float
getMediaTurma 0 = 0.0
getMediaTurma tamanhoTurma = 
    (somaMediasAlunos 1 tamanhoTurma 0.0) / (fromIntegral tamanhoTurma)

somaMediasAlunos :: Int -> Int -> Float -> Float
somaMediasAlunos id tamanhoTurma soma =
    if id > tamanhoTurma then
        soma
    else
        somaMediasAlunos (id+1) tamanhoTurma (soma+(getMedia id))

main = do
    print (aluno 3)
    print (getNome (aluno 3))
    print (getMedia 3)
    print (getMediaTurma 4)
