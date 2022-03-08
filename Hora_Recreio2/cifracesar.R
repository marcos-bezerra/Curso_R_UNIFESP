#Dicas

# funcao nchar
msg= "ATACARROMA"
tamanho= nchar(msg)
cat(tamanho)
# funcao strsplit
msg= "ATACARROMA"
msg.lista= strsplit(msg, split = "")
msg.lista
typeof(msg.lista)
# funcao unlist
frase = unlist(msg.lista)
frase
typeof(frase)
letra= frase[1]
# funcao match
normal=  c("A", "B","C","D","E","F","G","H",
           "I","J","K","L","M","N","O","P",
           "Q","R","S","T","U","V","W","X","Y","Z")
indice =match(letra,normal)
indice
# funcao paste
palavra= c("A", "T","A","C", "A","R")
palavra2= paste(palavra, collapse= "")
palavra2

# Programa usado na hora do recreio 2
cifra.cesar = function(mensagem, cripto)
{
 if (cripto ==1)
 { normal=  c("A", "B","C","D","E","F","G","H",
           "I","J","K","L","M","N","O","P",
           "Q","R","S","T","U","V","W","X","Y","Z")

 cifrado= c("D","E","F","G","H","I","J",
          "K","L","M","N","O","P","Q","R",
          "S","T","U","V","W","X","Y","Z","A","B","C")}

  if (cripto ==2)
  { cifrado=  c("A", "B","C","D","E","F","G","H",
               "I","J","K","L","M","N","O","P",
               "Q","R","S","T","U","V","W","X","Y","Z")
  
    normal= c("D","E","F","G","H","I","J",
             "K","L","M","N","O","P","Q","R",
             "S","T","U","V","W","X","Y","Z","A","B","C")}
  
msg= mensagem
tamanho= nchar(msg)
msg.list= strsplit(msg, split = "")
frase = unlist(msg.list)
frase.cripto= 0
letra =0
letra.codificada= 0
for (i in 1:tamanho){
  letra = frase[i]
  indice =match(letra,normal)
  letra.codificada[i] = cifrado[indice]
  }
mensagem.codificada= paste(letra.codificada, collapse= "")
return(mensagem.codificada)
}
texto1 =cifra.cesar("ATACARROMA", 1)
texto2 =cifra.cesar("DWDFDUURPD", 2)

