apagarEnquanto :: (t -> Bool) -> [t] -> [t]
apagarEnquanto _ [] = []
apagarEnquanto f (a:b) = 
    if (f a) then
        apagarEnquanto f b
    else
        a : b

ehNegativo :: Int -> Bool
ehNegativo x = x < 0

main = print (apagarEnquanto ehNegativo [-10..10] )
