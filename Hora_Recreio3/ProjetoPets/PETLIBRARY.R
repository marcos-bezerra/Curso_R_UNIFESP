# adotar pet
library(tidyverse)
pets= read.csv("pets.csv", encoding = "UTF-8")

opcoes= function(){
cat("\014")  
cat("Vamos adotar um cachorrinho?","\n")
cat("Todos disponíveis :       digite 1","\n")
cat("Filhotes disponíveis :    digite 2","\n")
cat("Cães por faixa etária :   digite 3","\n")
cat("Fêmeas disponíveis :      digite 4","\n")
cat("Machos disponíveis :      digite 5","\n")
opcao= as.numeric(readline("Digite a sua opcao:"))
return(opcao)
}


mostra.selecionado = function(){
if (opcao == 1){
  todos= select(pets, c(1,2,3,4))
  View(todos)}
if (opcao == 2){
  filhotes= filter(pets, CATEGORIA.IDADE == "FILHOTE (0 a 1 ano)")
  View(filhotes)}
if (opcao == 3){
  grupos= group_by(pets, CATEGORIA.IDADE)
  categorias = count(grupos)
  categorias.df = as.data.frame(categorias)
  View(categorias.df)}
if (opcao == 4){
    femeas= filter(pets, SEXO == "F")
    View(femeas)}
if (opcao == 5){
    machos= filter(pets, SEXO == "M")
    View(machos)}
}

quer.continuar =function()
{
  cat("Digite S ou s para continuar ","\n") 
  cat("Digite qualquer outra coisa para sair  ","\n") 
  opcao = readline("Digite S ou s para continuar ")
  if ((opcao == "S") |(opcao =="s"))
  { continuar = T
  } else {
    continuar =F
  }
  return (continuar)
}



#continua = T
#while(continua)
#{opcao= opcoes()
# mostra.selecionado()
# continua= quer.continuar()
#}