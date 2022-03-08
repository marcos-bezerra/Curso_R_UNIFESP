# referencia
# https://www.todamateria.com.br/regras-de-acentuacao/
# para ler um arquivo com acentos
library(tidyverse)
#carrega arquivos
# limpa o console
cat("\014")  
# o comando encoding = UTF-8 permite ler arquivos com acento
palavras= read.csv("palavras.csv", encoding = "UTF-8")
regras =  read.csv("regras.csv", encoding = "UTF-8")
continua= T
while( continua) {
 cat("\014")  
 # sorteia uma linha
 linha = sample_n(palavras,1)
 palavra= linha$palavra
 cat("A palavra", palavra," tem acento?", "\n")
 cat("Digite S, em caso afirmativo","\n")
 cat("Digite N, em caso negativo","\n")
 cat("Se você digitar qualquer outra tecla o programa será encerrado","\n")
 resposta= readline("A sua resposta é: ")
  if ((resposta != "S") & (resposta != "N")) { 
   cat("Você digitou uma opcao errada ", "\n")
   cat("Programa foi encerrado!")
   break
   }  
  if (resposta == linha$correta){
  cat("Parabéns a sua resposta está certa!","\n")
  chave = linha$regra
  linha_regra= filter(regras,regra == chave)
  cat(linha_regra$descricao,"\n")
  } else {
  cat("A sua resposta não está certa!","\n")
  chave = linha$regra
  linha_regra= filter(regras,regra == chave)
  cat("Lembre-se da regra:","\n")
  cat(linha_regra$descricao,"\n")
  }
quer.sair=readline("Digite S para sair: ")
if (quer.sair == "S"){continua = F}

}
