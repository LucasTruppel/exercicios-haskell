alunos :: [(Int, String, Float)]
alunos = [(1, "Ana", 3.4), (2, "Bob", 6.7), (3, "Tom", 7.6)]

aprovados2 :: [(Int, String, Float)] -> [String]
aprovados2 alunos = [nome | (_, nome, media) <- alunos, media >= 6.0]

main = do
    print (aprovados2 alunos)