########################################
# Programa: tabuada.r
# Descricao: Este programa permite que
# criancas estudem tabuada. Dois numeros
# inteiros, de 1 a 10 sao sorteados.
# Pergunta-se ao estudante o valor do produto
# Se o estudante acertar, ganha um ponto.
# Se errar, nao ganha ponto
# O programa apresenta 10 questoes, uma de cada vez.
# 
#######################################

#  limpa o console
cat("\014")  
# pergunta o nome do estudante
nome= readline("Qual o seu nome? ")
cat("Oi ", nome, "Vamos treinar tabuada!","\n" )
cat("Eu vou fazer 10 perguntinhas e voc? vai me responder, ok?","\n")
# sorteia um numero de 1 a 10
pontos =0
for (i in 1:10){
  numero1 = sample(1:10,1)
  numero2 = sample(1:10,1)
  produto= numero1*numero2
  cat(nome, " qual ? o produto de ", numero1,"X",numero2,"\n")
  resposta= readline("Digite o resultado do produto: ")
  resposta.conv= as.numeric(resposta)
  if (resposta.conv == produto){
    cat("Parab?ns ", nome, "voc? ganhou um ponto!", "\n")
    pontos= pontos+1
    cat("Vou te fazer mais uma perguntinha...", "\n")
    }
 if (resposta.conv != produto){
  cat("Voc? se enganou!","\n")
  cat(numero1, "x", numero2, "=", produto,"\n")
  cat("N?o desanime, Vou te fazer mais uma perguntinha...", "\n")
    }
}
cat("Fim do jogo !","\n")
cat(nome, "voc? fez ", pontos, "pontos!","\n")
