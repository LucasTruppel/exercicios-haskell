verificarAprovacao :: Float -> Float -> Float -> String
verificarAprovacao nota1 nota2 nota3 =
    if ((nota1 + nota2 + nota3) / 3) < 6.0 then
        "Reprovado"
    else
        "Aprovado"

main = do
    print("Digite a nota 1")
    nota1String <- getLine
    print("Digite a nota 2")
    nota2String <- getLine
    print("Digite a nota 3")
    nota3String <- getLine
    let nota1 = (read nota1String :: Float)
    let nota2 = (read nota2String :: Float)
    let nota3 = (read nota3String :: Float)
    print(verificarAprovacao nota1 nota2 nota3)

