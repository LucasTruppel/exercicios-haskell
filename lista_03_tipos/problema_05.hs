newtype Email = Email String

escreverEmail :: Email -> Email -> String -> String
escreverEmail (Email remetente) (Email destinatario) mensagem = "Remetente: " ++ remetente ++ "\n" ++ 
    "Destinatario: " ++ destinatario ++ "\n" ++ "Mensagem: " ++ mensagem

main = putStrLn (escreverEmail (Email "lucas@gmail.com") (Email "laura@gmail.com") "Oiii!")
