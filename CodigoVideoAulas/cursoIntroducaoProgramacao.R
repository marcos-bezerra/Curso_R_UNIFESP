# Codigo usado no curso "Introducao a linguagem de programacao R"
# Nao coloquei acento, pois R nao lida bem com acentos
# Usando o R como calculadoras
# hashtag eh usado para comentarios


##############################################################
# Operacoes simples
##############################################################
25+125
seq(1,100,by=2)
200-10
200:5
15*5
5^2
5%%2
1:10
# [] mostra a posicao do primeiro numero de cada linha
1:100
300:400
seq(1,100,by =2)
# R segue a ordem das operacoes ( divisão,multiplicacao, soma, subtraca)
3+2*1-2*1
2+8*5 -1
4/2+3*5+4-2
# na pratica, usar parenteses
(4/2)+(3*5)+(4-2)

##############################################################
# Objetos e funcoes
##############################################################

# Objetos e funcoes
# voce pode criar livremente objetos e atribuir valores por
# meio de funcoes

# objetos sao estrutura ( com um nome escolhido) que servem
# para armazenar dados. Seriam "variaveis"
# exemplo:
# pode ser um numero
a= 5
a
# alternativamente
a <- 5
a
a= a^2
# pode ser um character
a= "Joao"
a
# Boolean
a = TRUE
a
# um data frame
a= cars
View(a)
d= Titanic
View(d)
# uma lista
a= list("familia", 4,"Joao, Erica, Gigio e Cookie")
a
# uma lista de dataframes
c= list(a,d)
c
str(c)

# para listar o conteudo do objeto, basta escrever seu nome
a
# ou usar o comando print
print(a)
# ou usar o comando cat
cat(a)
# ou simplesmente usar parenteses
(a)
# objetos podem receber valores de funcoes
m = mean(1:2)
# nomeando objetos
notas= c(4,5,6,7)
media.turma = mean(notas)
media.turma1 = mean(notas)
media.Turma = mean(notas)
Media.Turma = mean(notas)
m.t1 = mean(notas)
# DICA: USAR SEMPRE A MESMA CONVENCAO AO LONGO DO SEU CODIGO!

##### AJUDA (HELP DO R)###################################
# PÁGINAS DE AJUDA
##########################################################

help("sum")
?sum
# quando voce quer informacoes relacionadas a palavra chave no CRAN
??sum

# paginas do help dizem o que a funcao faz
# a pagina apresenta
# 1)Description 2)Usage 3)Arguments 4)Details 5)Values 6)References 7)Examples



##############################################################
# Tipos de dados
##############################################################

#tipos de dados
# integer, double, character, logical, complex, raw
# exemplos
#integer: somente numeros inteiros
vector1= 1:10
vector1*5

# eh o mesmo que:
vector1 <- 1:10
typeof(vector1)
# note: o R armazena sempre numeros como "double"
# O padrao do R eh double
vector2= c(1,2,3,4,5,6,7,8,9,10)
typeof(vector2)
# se quiser armazenar como integer usar "L"
vector3= c(1L,2L,3L,4L,5L,6L,7L,8L,9L,10L)
typeof(vector3)
ls()
?ls
# character ( tipo usado para armazenar texto)
# usar "" ou ''
vector4 = c("Joao", "Erica","Gigio","Cookie")
typeof(vector4)
# atencao: o R convere automaticamente
vector5= c(1,2,"3")
typeof(vector5)
# atencao! R interpreta a, b e c como variaveis,
# que deveriam ser definidas antes
vector6= c(a, b,c,d)
# exemplo
a = "Joao"
b=  "Erica"
c=  "Gigio"
d= "Cookie"
vector6= c(a, b,c,d)
vector6
# Operadores logicos (Boolean)
vector7= c(T,F,T)
typeof(vector7)
vector8= c(TRUE,FALSE,TRUE)
typeof(vector8)
# ATENCAO: R diferencia maiusculo de minusculo!
vector8= c(True,False,True)
# Error: object 'True' not found
#Complex
x= 3+4i
typeof(x)
# Raw : usado para guardar um informacao em bytes
var.a = intToBits(1)
var.a
var.b = intToBits(2)
var.b
typeof(var.a)

##############################################################
# Regras de coercao
##############################################################

# regras de coercao em R
# todos os elementos de um vetor devem ser do mesmo tipo
# se um elemento eh character, todos serao convertidos
a= c(1,2,3)
typeof(a)
b= c(1,2,"3")
typeof(b)
print(b)
# se um vetor tem elementos logicos e numericos, todos
# os elementos logicos serao convertidos para numericos
# T =1, F =0
a= c(1,2,T)
print(a)
typeof(a)
b= c(1,2,F)
print(b)
typeof(b)
# E se for misto?
# caracteres, numeros e logicos -converte para character
b= c(1,"a", T)
print(b)
typeof(b)

##############################################################
# Funcoes : definicao e argumentos
##############################################################

# funcoes em R
# exemplos
round(5.4)
round(5.5)


b
# argumentos de uma funcao
# o argumento pode ser qualquer objeto (numero, character..)

b
# o argumento pode ser um dataframe...
b= View(cars)
b
# o argumento pode ser uma sequencia de numeros...
b= sum(1:3)
b
# o argumento pode ser um numero...
b= sqrt(9)
b
a= 1:6
mean(a)
# # o argumento pode ser o resultado de uma funcao
b= round(mean(a))
b

# argumentos de uma funcao
a= c(1,2,NA)
a
b= sum(a)
b
b= sum(a, na.rm =T)
b
# os argumentos opcionais tem valor default, no caso na.rm= FALSE
args(sum)
# mais um exemplo
b= round(2.58)
b
args(round)
b= round(2.58, 1)
b
# Nota: melhor usar os nomes dos argumentos, 
# pois a ordem eh importante
?round
b= round(2.584321, digits= 4)
b
b= round(digits= 1, 2.58)
b
b= round( 1, 2.58)
b

##############################################################
# Criando funcoes em R
##############################################################

# Criando funcoes em R
# funcoes "armazenam comandos"

# a funcao pode nao ter argumentos
escreve.nome= function()
{ 
  nome = readline("Qual o seu nome? ")
  cat("Seu nome é :", nome)
}
# chamando a funcao
escreve.nome()

# a funcao pode retornar algo, um objeto (número, lista, dataframe,etc)
multiplica.por.dois = function(numero)
{ dobro = numero*2
  return(dobro)
}
resposta= multiplica.por.dois(4)
print(resposta)

##### VETORES ##########################################
# Vetores: sequencia de elementos do mesmo tipo
# Operacoes basicas com vetores
########################################################
a= c(1,2,3,4)
b= c(2,4,6,8)
# adicao
c= a+b
c
# subtracao
c= b-a
c
# multiplicacao
c= a*b
c
# divisao
c= b/a
c
# algumas funçoes com vetores (ver R reference card)
# https://cran.r-project.org/doc/contrib/Short-refcard.pdf
a= c(1,2,3,4)
a
#soma
soma = sum(a)
soma
#produto de todos os valores
produto= prod(a)
produto
#media
media= mean(a)
media
#mediana
mediana= median(a)
mediana
#desvio padrao
desvio.padrao= sd(a)
desvio.padrao
# menor valor
min(a)
#maior valor
max(a)

##### VETORES ############################################
# Vetores: "reciclagem de vetores"
#trabalhando com vetores de tamanhos diferentes
##########################################################
a= c(1,2,3,4)
b= c(1,2,3,4,5)
d= a+b
d
# d = c(2,4,6,8,6)
# O R comecou a repetir os valores para poder somar!!!
# a =c(1,2,3,4,1) ---repetiu o primeiro valor para completar
# b =c(1,2,3,4,5)
# d= c(2,4,6,8,6)

a= c(1,2,3,4)
b= c(1,2,3,4,5,6,7,8)
d= a+b
d
# d = c(2,4,6,8,6,10,12)
# O R comecou a repetir os valores para poder somar!!!!
# a= c(1,2,3,4,1,2,3,4)
# b= c(1,2,3,4,5,6,7,8)
# d= c(2,4,6,8,6,8,9,12)

##### VETORES ############################################
# Atributos de vetores: NOMES(estudaremos agora), dimensoes, classes
##########################################################
notas = c(5,6,7,10)
notas
names(notas) =c("Joao", "Maria","Jose", "Paulo")
notas
names(notas) = NULL
notas

##### VETORES ############################################
# Vetores: Trabalhando com vetores (selecionando valores)
##########################################################
idades = c(56,45,10,1)
nomes  = c("Joao","Erica", "Giovanni", "Cookie")
# acessando por meio de indices
idades[1]
nomes[1]
# seleciona todos, menos o escolhido
nomes[-1]
nomes[-2]
# selecionando alguns, específicos
nomes[c(1,4)]
# acessando por meio dos nomes dos vetores
idades = c(56,45,10,1)
names(idades)= c("Joao","Erica", "Giovanni", "Cookie")
idades
idades["Joao"]
idades[c("Joao","Cookie")]
# recortando um vetor
idades[c(1,3)]
# todos, menos uma fatia
b= idades[-c(1,3)]
b
# mais um exemplo
nros = seq(0,1000,by=100)
nros
b= nros[-c(4:8)]
b
# fatiando usando um operador (>,<)
b= idades[idades <45]
b
b= idades[idades <= 45]
b
b= idades[idades > 45]
b

##### VETORES ############################################
# Atributos de vetores: nomes, Dimensoes, Classes
##########################################################

a= c(1,2,3,4,5,6,7,8)
# o primeiro numero eh o numero de linhas(2) e 
# o segundo numero eh o numero de colunas(4)
# ATENCAO: R preenche coluna por coluna!
dim(a) = c(2,4)
a

b= c(1,2,3,4,5,6,7,8)
# o primeiro numero eh o numero de linhas(4) e 
# o segundo numero eh o numero de colunas(2)
dim(b) = c(4,2)
b

# A funcao dim altera a classe
d= c(1,2,3,4,5,6,7,8,9)
d
class(d)
# o primeiro numero eh o numero de linhas(4) e 
# o segundo numero eh o numero de colunas(2)

dim(d) = c(3,3)
d
class(d)
##### MATRIZES ############################################
# Criando uma matriz
##########################################################
# Matrizes tem duas dimensoes (linhas e colunas), somente um tipo
# de dados

a= c(1,2,3,4,5,6,7,8)
matrix.a = matrix(data= a, nrow= 2, ncol= 4 )
# preenche por colunas
matrix.a

# organizando a matriz, criando por linhas
a= c(1,2,3,4,5,6,7,8)
matrix.a = matrix(data= a, nrow= 2, ncol= 4 , byrow= TRUE)
# preenche por colunas
matrix.a

# criando usando a funcao rbind
a= c(1,2,3,4)
b= c(5,6,7,8)
matrix.a= rbind(a,b)
matrix.a

# criando usando a funcao cbind
a= c(1,2,3,4)
b= c(5,6,7,8)
matrix.a= cbind(a,b)
matrix.a

# nomeando linhas e colunas
# notas de duas turmas de alunos
turma1= c(9,8,7,6)
turma2 = c(5,6,7,8)
matrix.a= rbind(turma1,turma2)
matrix.a
colnames(matrix.a) = c("2019", "2020","2021", "2022")
matrix.a

#fazendo uma matriz trasposta
matrix.b = t(matrix.a)
matrix.b

# adicionando linhas a uma matriz, usando rbind
turma1= c(9,8,7,6)
turma2 = c(5,6,7,8)
matrix.a= rbind(turma1,turma2)
matrix.a
turma3 = c(4,9,9,8)
matrix.b= rbind(matrix.a, turma3)
matrix.b

##### MATRIZES ############################################
# Criando uma matriz de uma forma compacta, com uma linha de
# codigo
#         2018 2019 2020
# Turma1   10    9    8
# Turma2    7    6    5
# Turma3    7    8    9
#
# Nota: na lista o primeiro conjunto de nomes eh das linhas
# o segundo conjunto eh das colunas
##########################################################
notas= matrix(c(10,9,8,7,6,5,7,8,9),
              nrow= 3, byrow=T,
              dimnames = list(c("Turma1","Turma2","Turma3"),c("2018","2019","2020") ) )

notas

##### exemplo #######
# criando uma matriz usando dim
x= seq(1,11, by =2)
x
dim(x)=c(2,3)
x
# eh equivalente a 
y= matrix(x,ncol= 3, byrow= F)
y

##### MATRIZES ############################################
# Reciclagem: repeter valores de mdo a alcancar 
# o numero de valores necessarios para realizar a operacao
##########################################################
# EXEMPLO:
x= c(1:3)
y= matrix(x, nrow= 5, ncol= 5)
# como x eh muito pequeno, R repete os valores!!!!
y


##### MATRIZES ############################################
# Manipulando matrizes
##########################################################

# criando uma matriz usando dim
x= seq(0,9)
x
dim(x)=c(2,5)
x

a= x[1,1]
a
# todos os elementos de uma linha
linha1= x[1,]
linha1

# todos os elementos de uma coluna
coluna1= x[,1]
coluna1
# e se voce fizer x[5]?
# R procura pelo quinto elemento!
# R procura por todos os elementos da matriz
#, valor por valor, de coluna para coluna, de baixo para cima,
# da esquerda para direita
x
x[5]

##### MATRIZES ############################################
# Fatiando matrizes
##########################################################
# criando uma matriz usando dim
x= seq(1,12)
x
dim(x)=c(4,3)
x
# selecionando linhas especificas (linhas 1 e 4)
# nota c(1,4) sao os indices das linhas
y= x[c(1,4),]
y
# selecionando colunas especificas (colunas 1 e 3)
z= x[,c(1,3)]
z
# e se fizer sem a virgula? R procura os elementos 1 e 3 ( de coluna em coluna,
# de cima para baixo)
w= x[c(1,3)]
w
# da para selecionar pelos nomes das linhas e colunas
colnames(x)= c("col1", "col2", "col3" )
rownames(x) = c("linha1","linha2","linha3","linha4")
x
x["linha1",]
x[, "col2"]
x["linha2","col2"]


##### MATRIZES ############################################
# Operacoes com matrizes: soma, multiplicacaio
##########################################################

# criando duas matrizes usando dim
x= seq(1,12)
x
dim(x)=c(4,3)
x
colnames(x)= c("col1-x", "col2-x", "col3-x" )
rownames(x) = c("linha1-x","linha2-x","linha3-x","linha4-x")
x

# multiplicando uma matriz por um escalar (um numero)
# multiplica elemento por elemento
z= x*4
x
z

# subtraindo valores de uma matriz
w= x-1
x
w

# somando duas matrizes
# criei uma nova matriz
y= seq(13,24)
y
dim(y)=c(4,3)
y
colnames(y)= c("col1-y", "col2-y", "col3-y" )
rownames(y) = c("linha1-y","linha2-y","linha3-y","linha4-y")
y
x
# vamos somar
z= x+y
z
# nota: precisa renomear as linhas e colunas
z
colnames(z)= c("col1-z", "col2-z", "col3-z" )
rownames(z) = c("linha1-z","linha2-z","linha3-z","linha4-z")
z

# Multiplicacao de matrizes: multiplica elemento por elemento!
# eh diferente de algebra linear!!!
# ex:
x= seq(1,4)
x
dim(x)=c(2,2)
x

z= x*x
z

# Para fazer a multiplicacao como em algebra linear
# o numero de colunas da primeira matriz tem que ser igual ao numero de linhas da
# segunda matriz
# matriz 1: nxm
# matriz 2: mxp
# produto : nxp
# tem que usar os operadores %*% (inner multiplication- produto escalar = uxv)
l1=c(1,2,3)
l2=c(4,5,6)
a= rbind(l1,l2)
a
b=c(7,8,9)
dim(b)=c(3,1)
b
# exemplo o produto de uma matriz 2x3 vezes uma 3x1 da uma matriz 2x1
z= a%*% b
z
# confira com o video:https://www.youtube.com/watch?v=xw63qYU726U

##### MATRIZES ############################################
# Operacoes com matrizes: soma de colunas e soma de linhas
# calculando a media de colunas, media das linhas
##########################################################

l1=c(1,2,3)
l2=c(4,5,6)
a= rbind(l1,l2)
a
b= colSums(a)
b

a
d= rowSums(a)
d

a
d= colMeans(a)
d

a
d= rowMeans(a)
d

#criando uma linha com total e adicionando a matriz
soma= colSums(a)
d= rbind(a,soma)
d

#######################################################
# Dados categóricos: categorias de informacoes
#######################################################

# categoricos: podem ser nominais e ordinais
# nominais: nao tem quaquer ordem ou hierarquia
# ex: cor = branco, amarelo, verde...
# ex: times= Corinthians, Palmeiras,etc..
# ex: racas de cachorros: Golden Retrieve, Bulldogue Ingles, Shih-Tzu
# ordinal: tem ordem
# ex: formacao academica: nenhum, primario, secundario...PhD
# ex: nivel salarial : baixo, medio, alto
# para representar variaveis categoricas R usa fatores (factor)


#######################################################
# Factor
#######################################################


#exemplo:
# esta eh uma variavel ordinal
nivel.salarial = c("Baixo","Baixo","Alto", "Medio", 
                   "Baixo","Medio","Medio",
                   "Alto","Baixo","Baixo")

nivel.salarial
typeof(nivel.salarial)
# o default eh em ordem alfabetica
nivel.salarial.factor = factor(nivel.salarial)
nivel.salarial.factor
# calcula quanto tem em cada nivel ( levels)
summary(nivel.salarial.factor)
# ao converter para fator, converte para inteiros!
typeof(nivel.salarial.factor)
#  1- alto 2-corresponde a baixo e 3-medio
levels(nivel.salarial.factor)

# como estamos trabalhando com uma variavel categorica ordinal
# precisamos ordenar o  fator
nivel.salarial.factor = factor(nivel.salarial,
                              levels= c("Baixo", "Medio","Alto"))

nivel.salarial.factor
summary(nivel.salarial.factor)

# segunda forma de fazer isso,fazendo R entender quem eh maior que quem
nivel.salarial = c("Baixo","Baixo","Alto", "Medio", 
                   "Baixo","Medio","Medio",
                   "Alto","Baixo","Baixo")

nivel.salarial.factor = factor(nivel.salarial, ordered= TRUE,
                               levels= c("Baixo", "Medio","Alto"))
nivel.salarial.factor

# renomeando os levels dos fatores
levels(nivel.salarial.factor)= c("Salario Baixo","Salario Medio","Salario Alto")
nivel.salarial.factor
summary(nivel.salarial.factor)


#######################################################
# List
#######################################################
# list: conjunto qualquer de objetos armazenados
# podem armazenar objetos de diferentes tipos e de tamanhos diferentes!

familia= list(c("Joao", "Erica", "Gigio", "Cookie"),
              c(56,45,10,1),
              "Sao Paulo",
              c("Masculino", "Feminino")
              )
familia

# listas podem armazenar listas

familia1= list(c("Joao", "Erica", "Gigio", "Cookie"),
              c(56,45,10,1),
              "Sao Paulo",
              c("Masculino", "Feminino")
)
familia1

str(familia1)

familia2= list(c("Marcelo", "Karina", "Kenzo", "Tutu"),
               c(46,45,11,5),
               "Sao Paulo",
               c("Masculino", "Feminino")
)
familia2

familias = list(familia1, familia2)
familias
str(familias)

#######################################################
# List: organizando as listas, criando nomes
#######################################################

familia1= list(Pessoas= c("Joao", "Erica", "Gigio", "Cookie"),
               Idades= c(56,45,10,1),
               Cidade= "Sao Paulo",
               Sexo= c("Masculino", "Feminino")
)
familia1

str(familia1)

#######################################################
# List: acessando elementos de uma lista
# Nota [[]]]: extrai um "conjunto"da lista
#       []: extrai um elemento do conjunto
#######################################################

# lista sem nomes dos grupos

familia2= list(c("Marcelo", "Karina", "Kenzo", "Tutu"),
               c(46,45,11,5),
               "Sao Paulo",
               c("Masculino", "Feminino")
)
familia2
str(familia2)
# extrai o primeiro elemento da lista, que eh uma lista
familia2[[1]]
# para extrair o conteudo do quarto elemento do primeiro elemento da lista (que eh tb uma lista)
familia2[[1]][4]

# extrai o primeiro e o segundo elemento da lista
familia2[1:2]


# segundo exemplo, acessando elementos de uma lista dentro de uma lista
lista= list( list(c(1:5), c("a", "b","c")),"Numeros e letras")
str(lista)
# extrai o primeiro conjunto, que sao duas listas
lista[[1]]
#  extrai o primeiro subconjunto da primeira lista, que eh outra lista
lista[[1]][[1]]
#  extrai o primeiro elemento do primeiro subconjunto da primeira lista
lista[[1]][[1]][1]


# Extraindo de um Lista com nomes dos grupos eh mais facil!!!
familia1= list(Pessoas= c("Joao", "Erica", "Gigio", "Cookie"),
               Idades= c(56,45,10,1),
               Cidade= "Sao Paulo",
               Sexo= c("Masculino", "Feminino")
)
familia1
str(familia1)

familia1$Pessoas
familia1$Idades
familia1$Pessoas[3]

#######################################################
# Operadores logicos: & (and) |(or) e !(not)
# And: so eh verdadeiro se todos sao verdadeiros
# T & T = T
# T & F = F, F & T = F , F & F = F
#
# | And: eh verdadeiro se pelo menos um for verdadeiro
# T | T = T
# T | F = T, F | T = T , F | F = F
# 
# ! not, troca o resultado, de verdadeiro para falso e
# vice-versa
#
#   & = &&
#   |  = ||
#######################################################
# Exemplo &
(5<10) & (5>4)

# Exemplo |
(5<10) | (5<4)

# Exemplo !
(5 <4)
!(5<4)

#############################################################
# Realizando operacoes logicas com vetores
############################################################
# compara um a um
a= c(1,2,3,4)
a == 3
a > 3
b= c("Joao", 57,"Erica")
"Joao" == b
# comparando vetores
a= c(1,2,3,4)
b= c(1,2,4,5)
b>a
(a>5)|(b<4)
(a <4)|(b<4)

#############################################################
# Condicionais: instruções a serem realizadas quando uma
# condicao eh atingida
# if, else, elseif
#############################################################

# if
#if (test_expression) {
#  statement
#}

condicao= TRUE
if (condicao){
  cat("Condicao atendida!")
}

# if else: duas condicoes
# ATENCAO QUANTO A POSICAO DAS CHAVES!!!
# as chaves tem que estar na mesma linha do else!!!
# se nao estiver, nao funciona

#if (test_expression) {
#  statement1
#} else {
#  statement2
#}


condicao= TRUE
if (condicao){
  cat("Condicao atendida!")
} else {
  print("Condicao nao atendida")
}

# else if: mais de duas condicoes

#if ( test_expression1) {
#  statement1
#} else if ( test_expression2) {
#  statement2
#} else if ( test_expression3) {
#  statement3
#} else {
#  statement4
#}

# else if: infinitas condicoes
# ATENCAO AO POSICIONAMENTO DAS CHAVES!

# NOTA: o if para de funcionar assim que a primeira condicao for atendida
opcao= 1
if (opcao == 1) {
  cat("Opcao 1 escolhida")
} else if (opcao ==2){
  cat("Opcao 2 escolhida")
} else {
  cat("Opcao 3 escolhida")
}

#############################################################
# Loops: for
# repete a mesma operacao por um numero determinado de vezes
#############################################################

for (i in 1:10){
  cat("Primeira vez, i eh igual a:", i, "\n")
}

nomes= c("Joao","Erica", "Gigio","Cookie")
for (i in 1:length(nomes)){
  cat("Nome:", nomes[i], "\n")
}

# Nota importante: para fazer o loop retornar algo
# eh preciso iniciar a variavel

# nota: a funcao vector cria um vetor vazio de um determinado comprimento!

vet= vector(length = 10)
for( i in 1:10){
  vet[i]=i 
}
vet  

# funciona tambem assim

vet= 0
for( i in 1:10){
  vet[i]=i 
}
vet  

#############################################################
# Loops: while
# repete a mesma operacao por um numero determinado de vezes, 
# enquanto uma condicao for verdadeira
#############################################################

condicao= T
while (condicao == T){
  opcao= readline("Digite a para sair, qualquer coisa para continuar")
  if (opcao == "a"){condicao = F}
}

# exemplo
i= 1
while (i<5){
  print(i)
  i=1+i
}

#############################################################
# Loops: repeat
# repete a mesma operacao por um numero determinado de vezes, 
# enquanto uma condicao for verdadeira, forcar a saida com break
#############################################################
i=1
repeat{
    cat("Vou repetir até i chegar em 100",i,"\n")
    i= i+1
    if (i == 101){break}
}

#############################################################
# Funções: variaveis globais e locais
#
#############################################################
# dobro eh variavel local
# nro eh variavel global
nro = 4
calcula.dobro= function(numero){
  dobro = numero*2
  return (dobro)
}
a= calcula.dobro(nro)
dobro
# a funcao pode ter um valor default

nro = 4
calcula.dobro= function(numero=1){
  dobro = numero*2
  return (dobro)
}
a= calcula.dobro()
a
a= calcula.dobro(nro)
a

# a funcao pode CRIAR uma variavel global!!!
# operador <<-

nro = 4
calcula.dobro= function(numero){
  dobro <<- numero*2
  
}
calcula.dobro(nro)
dobro

# a funcao pode ALTERAR uma variavel global!!!
# operador <<-

nro = 4
altera.nro= function(){
  nro <<-100
}
altera.nro()
nro


#############################################################
# Dataframes: criação
#
#############################################################

# vetores e matrizes so permitem armazenar elementos de um mesmo
# tipo. Ja o dataframe permite armazenar elementos de tipos diferentes
# Dataframes sao listas de vetores de mesmo comprimento colocados em colunas
# Dataframes podem ser importados de arquivos csv, excell, text e varios outros
# formatos.

# criando um data frame, com vetores do mesmo tamanho
# cada vetor tem elementos do mesmo tipo
pessoas= c("Joao", "Erica","Gigio", "Cookie")
idades=  c(56,45,10,1)
sexo  = c("M","F","M","F")
especie = c("Humano","Humano","Humano","Cachorro")
familia= data.frame(pessoas,idades,sexo,especie)
familia
View(familia)
# da para mudar nomes das colunas, no momento de criacao do dataframe
familia= data.frame(Integrantes= pessoas,
                    Idade =idades,
                    Genero =sexo, 
                    Especie= especie)
View(familia)
# ou usar a funcao names 
names(familia)= c("People", "Age", "Gender","Especies")
View(familia)
#colocando nomes nas linhas
row.names(familia) = c("Papai","Mamae", "Filho","Pet")
str(familia)
View(familia)

#############################################################
# Dataframes: instalando o pacote tidyverse, um pacote
# para analise e manipulacao de dados
# tidyverse instala os pacotes ggplot2, dplyr, tidyr,readr, tibble e purr
# Nota: tibble são versoes mais amigaveis de data frames
#############################################################

pessoas= c("Joao", "Erica","Gigio", "Cookie")
idades=  c(56,45,10,1)
sexo  = c("M","F","M","F")
especie = c("Humano","Humano","Humano","Cachorro")
familia= data.frame(pessoas,idades,sexo,especie)

#install.packages("tidyverse")
library(tidyverse)


#############################################################
# Dataframes:importando dados
# usaremos os arquivos mtcars.txt e mtcars.csv
##############################################################

# Nao esquecer de colocar os arquivos a serem importado no seu
# diretorio de trabalho
#
# dica:http://www.sthda.com/english/wiki/reading-data-from-txt-csv-files-r-base-functions
 
# read.csv, read.csv2( para paises que usam , como casa decimal e ; como separador)

# Nota: tem que especificar corretamente o separador!
# abrindo um arquivo texto, delimitado com TABS(espacamento)
df  = read.delim("mtcars.txt")
df1 = read.delim("mtcars.txt", header = TRUE, sep = "", stringsAsFactors = F)
df1 = read.delim("mtcars.txt", header = TRUE, sep = "", stringsAsFactors = F, 
                 row.names = 1)
# abrindo um arquivo csv, duas formas:
df2=  read.csv("mtcars.csv")
df3=  read.table("mtcars.csv",sep =",", header = T,stringsAsFactors = F)
# 1 é a coluna onde aparecem os row names
df4=  read.csv("mtcars.csv", row.names = 1)

# Caso do Brasil e outros paises
# onde o decimal usa virgula ex: 101,9 ao inves de 101.9
# podemos usar o  read.csv2(file, header = TRUE, sep = ";", dec = ",", ...)
# e para arquivos texto o  read.delim2      

# Observacao
# se o arquivo csv vem com textos adicionais: suprimir o texto
# antes de importar ou usar o comando:
# read.csv(...,skip= n), sendo n o numero de linhas que voce quer eliminar

#se voce so quer ler algumas linhas do arquivo
df5=  read.csv("mtcars.csv", nrows = 4)

#############################################################
# Dataframes:exportando dados
# 
##############################################################

pessoas= c("Joao", "Erica","Gigio", "Cookie")
idades=  c(56,45,10,1)
sexo  = c("M","F","M","F")
especie = c("Humano","Humano","Humano","Cachorro")
familia= data.frame(pessoas,idades,sexo,especie)
write.csv(familia,"familia.csv")
arquivo= read.csv("familia.csv")
# para corrigir o problema:
write.csv(familia,"familia.csv", row.names = F)
arquivo= read.csv("familia.csv")


#############################################################
# Dataframes: obtendo informacoes de dataframes
# 
##############################################################
pessoas= c("Joao", "Erica","Gigio", "Cookie")
idades=  c(56,45,10,1)
sexo  = c("M","F","M","F")
especie = c("Humano","Humano","Humano","Cachorro")
familia= data.frame(pessoas,idades,sexo,especie)
write.csv(familia,"familia1.csv", row.names = F)
arquivo= read.csv("familia1.csv")

str(arquivo)
summary(arquivo)
nrow(arquivo)
ncol(arquivo)
colnames(arquivo)
rownames(arquivo)

#para explorar daframes do R
data()
#############################################################
# Dataframes: selecionando elementos, linhas, colunas
# []
##############################################################

turma= read.csv("ALUNOS.csv")
turma= read.csv("ALUNOS.csv", sep = ";")
turma= read.csv2("ALUNOS.csv" )
# head : mostra o comeco do data frame
# tail:  mostra o final do data frame
head(turma)
tail(turma)
#acessando um elemento
# pela interseccao linha x coluna
turma[1,2]
# pelo posicao de um elemento na coluna
turma$Nome[2]
#acessando um elemento, pelo nome da coluna
turma[1,"Curso"]
#acessando uma linha
turma[1,]
turma[4,]
#acessando uma coluna, de 4 formas diferentes
turma[,1]
turma[,"Nome"]
turma[["Nome"]]
turma$Nome
# criando um subconjunto, selecionando colunas
col1.col2 = turma[,c(1:2)]
#criando um subconjunto, selecionando linhas
alunos1a4 = turma[c(1:4),]
alunos1e4 = turma[c(1,4),]
# selecionando um subconjunto, selecionando linhas e colunas
grupo = turma[c(2,4,6),c(2,3)]
# selecionando um elemento especifico e substituindo o valor
turma[turma == "Ana"] = "Ana Paula Souza"
# criando um subconjunto
mulheres =subset(turma,Genero =="F")


#############################################################
# Dataframes: adicionando linhas e colunas
# 
##############################################################
View(turma)

# adicionando uma coluna
turma= read.csv2("ALUNOS.csv")
turma$pet= c("Cao", "Gato", "Cao","Hamster","Peixe","Gato","Passarinho","Gato",
             "Cao","Cao")
turma[["Estado Civil"]]= c("Casado(a)", "Solteiro(a)", 
                           "Casado(a)", "Solteiro(a)",
                           "Casado(a)", "Solteiro(a)",
                           "Casado(a)", "Solteiro(a)",
                           "Casado(a)", "Solteiro(a)")
#removendo uma coluna
turma$pet= NULL

turma= read.csv2("ALUNOS.csv")
#adicionando uma linha se fizer ASSIM, muda todo os dados numericos do
# dataframe, que passa a ser somente de chr
#JEITO ERRADO DE FAZER
# o erro eh que em um vetor todos sao do mesmo TIPO (chr)
# enquanto que no data frame os tipos das colunas sao diferentes!
turma[11,]=c(11,"Sandra", "Psicologia",7,60,"F")
# JEITO CERTO
turma= read.csv2("ALUNOS.csv")
#Criar um dataframe de uma linha e juntar ao data frame usando rbind
aluno11= data.frame(Matricula= 11,Nome= "Sandra", Curso= "Psicologia",
                    Media= 7,Idade= 60,Genero ="F")
turma= rbind(turma,aluno11)

#############################################################
# Dataframes: lidando com NAs
# NA= not available
##############################################################

turma= read.csv2("ALUNOS.csv")
# introduzindo NA
turma[turma == "Pedagogia"] = NA
# encontrando os NAs
is.na(turma)
# pesquisando se ha algum NA no dataframe inteiro
any(is.na(turma))
# pesquisando se ha algum NA em uma coluna do data frame
is.na(turma$Curso)
# substituindo os NAs por algo, no caso "Desconhecido")
turma$Curso[is.na(turma$Curso)]= "Desconhecido"
#############################################################
# Dataframes: substituindo NAs pela media da coluna
# 
##############################################################
a=  c(1,2,3,4,5)
b=  c(2,NA,3,6,7)
d = c(1,3,5,7,9)
dframe= data.frame(a,b,d)
# nota, quando tem NA nao consegue realizar calculos, precisa usar na.rm
media= mean(dframe$b)
media
media= mean(dframe$b, na.rm =T)
media
# algumas vezes precisamos substituir o NA pela media da coluna
dframe$b[is.na(dframe$b)] = mean(dframe$b, na.rm = T)

#############################################################
# Dataframes: usando o pacote tidyverse
# Funcoes filter, select, mutate, transmute
# 
##############################################################
# install.packages("tidyverse")
library(tidyverse)
turma= read.csv2("ALUNOS.csv")
# filter (cria um subgrupo seguindo algum criterio)
aprovados = filter(turma, Media >6)
pedagogos = filter(turma, Curso == "Pedagogia")
pedagogos.reprovados = filter(turma, Curso == "Pedagogia" & Media <6)

#############################################################
# Data frames: usando o pacote tidyverse
# Funcoes  select
# 
##############################################################
library(tidyverse)
turma= read.csv2("ALUNOS.csv")
# select ( seleciona colunas)
cursos= select(turma, Curso)
nome.cursos= select(turma, Nome, Curso)
tres.colunas= select(turma, c(2,3,4))
# pode excluir coluna
colunas.restantes = select(turma, -c(2,3,4))
# pode selecionar baseado em parte do nome da coluna
comeca.com.M = select(turma, starts_with("M"))
termina.com.a = select(turma, ends_with("a"))
#da para mudar a ordem das colunas
curso.nome= select(turma, Curso, Nome)
# da para so mudar e selecionar tudo o resto
curso.nome= select(turma, Curso, Nome, everything())

#############################################################
# Dataframes: usando o pacote tidyverse
# Funcoes   mutate, transmute
# 
##############################################################
library(tidyverse)
turma= read.csv2("ALUNOS.csv")
# criando uma nova coluna
turma =mutate(turma, Media.Prova= mean(Media, na.rm= T))
# se quiser crir uma coluna e jogar o resto fora
turma= read.csv2("ALUNOS.csv")
turma =transmute(turma, Media.Prova= mean(Media,na.rm =T))

#############################################################
# Dataframes: usando o pacote tidyverse
# Funcoes arrange, group & summarize
# 
##############################################################
library(tidyverse)
turma= read.csv2("ALUNOS.csv")
turma.medias= arrange(turma,Media)
# desc _> decrecente
turma.medias= arrange(turma,desc(Media))
turma.medias.idades = arrange(turma,Media,Idade)
# funcao summarize: retorna a informacao em uma linha
media.turma = summarize(turma, mean(Media,na.rm= T))
# group_by divide o data frame em grupos
turma.genero= group_by(turma,Genero)
str(turma.genero)
medias.por.genero =summarize(turma.genero,Media.grupo= mean(Media, na.rm= T))

turma.curso= group_by(turma,Curso)
str(turma.curso)
resumo= summarize(turma.curso,Media.Curso= mean(Media, na.rm= T))

turma.genero= group_by(turma,Genero)
str(turma.genero)
resumo2= summarize(turma.genero,Media.Curso= mean(Media, na.rm= T))

#############################################################
# Dataframes: usando o pacote tidyverse
# Funcoes:sample
# 
##############################################################
library(tidyverse)
turma= read.csv2("ALUNOS.csv")
#pode sortear um conjunto de linhas do data frame
tres.alunos= sample_n(turma,3)
#pode sortear um percentual das linhas do data frame
vinte.porcento= sample_frac(turma,0.20)
# sorteando com repeticao (bootstrapping)
tres.alunos= sample_n(turma,3, replace =TRUE)

#############################################################
# Dataframes: usando o pacote tidyverse
# Funcoes: pipe %>% ( combina multiplos operadores)
#
#  ex: operacao 1(primeira operacao) %>% operacao 2 %>% operacao 3 (ultima operacao)
##############################################################
library(tidyverse)
turma= read.csv2("ALUNOS.csv")
pedagogos= filter(turma,Curso == "Pedagogia")
pedagogos.meninas= filter(pedagogos,Genero =="F")
pedagogos.media.idades= summarise(pedagogos.meninas, mean(Idade))
# eh o mesmo que
pedagogos.media.idades2= turma %>% 
                        filter(Curso == "Pedagogia") %>%
                        filter(Genero == "F") %>%
                        summarise( mean(Idade))


#############################################################
# Dataframes: Tidy---dados organizados de forma consistente
# Funcoes: gather: muda de um formato largo para longO
#          spread: faz o oposto
##############################################################
library(tidyverse)

# gather reorganiza dados "largos" para "longos"

alunos =  c("a", "b", "c", "d", "e","f", "g", "h", "i", "j")
prova.P1= c(4, 5, 6, 7, 8, 9, 3, 2, 5, 4)
prova.P2= c(5, 5, 8, 9, 7, 5, 9, 3, 6, 9)
prova.P3= c(7, 9, 9, 8, 7, 6, 7, 5, 7, 10)
notas.alunos= data.frame(alunos,prova.P1,prova.P2,prova.P3)
notas = gather(notas.alunos,PROVAS,PONTOS,prova.P1:prova.P3 )
notas= arrange(notas,alunos)

# segundo exemplo

pacientes =  c("a", "b", "c", "d", "e","f", "g", "h", "i", "j")
medicao.1exame= c(4, 5, 6, 7, 8, 9, 3, 2, 5, 4)
medicao.2exame= c(5, 5, 8, 9, 7, 5, 9, 3, 6, 9)
medicao.3exame= c(7, 9, 9, 8, 7, 6, 7, 5, 7, 10)
medicao.4exame= c(4, 5, 6, 7, 8, 9, 3, 2, 5, 4)
medicao.5exame= c(5, 5, 8, 9, 7, 5, 9, 3, 6, 9)
medicao.6exame= c(7, 9, 9, 8, 7, 6, 7, 5, 7, 10)
medicao.7exame= c(7, 9, 9, 8, 7, 6, 7, 5, 7, 10)
medicao.8exame= c(4, 5, 6, 7, 8, 9, 3, 2, 5, 4)
medicao.9exame= c(5, 5, 8, 9, 7, 5, 9, 3, 6, 9)
medicao.10exame= c(7, 9, 9, 8, 7, 6, 7, 5, 7, 10)
medicoes.pacientes= data.frame(pacientes,medicao.1exame,medicao.2exame,medicao.3exame,
                               medicao.4exame,medicao.5exame,medicao.6exame,
                               medicao.7exame,medicao.8exame,medicao.9exame,
                               medicao.10exame)
medicoes = gather(medicoes.pacientes,EXAMES,VALORES, medicao.1exame: medicao.10exame )
medicoes= arrange(medicoes,pacientes)

#############################################################
# Dataframes: Tidy---dados organizados de forma consistente
# Funcoes: spread ( faz oposto da funcao gather)
##############################################################
medicoes.mod= spread(medicoes,key= EXAMES,value=VALORES)

#############################################################
# Dataframes: Tidy---dados organizados de forma consistente
# Funcoes: separate--divide uma variavel simples em duas
# 
##############################################################
library(tidyverse)
datas =c("JAN/1/2021","FEV/22/2021", "MAR/13/2021", "APR/14,2021")
datas.df= data.frame(datas)
datas.mod = separate(datas.df,datas, into= c("MES","DIA","ANO"))

numeros =c(100.3,101.4,102.5,105.2)
numeros.df= data.frame(numeros)
numeros.mod = separate(numeros.df,numeros, into= c("inteiro", "decimos"))


cliente = c("Joao","Joao","Erica","Erica")
ano.mes= c("2021.jan","2021.fev", "2021.jan","2021.fev")
saldo   = c( 100,120,200,240)
cartela.clientes= data.frame(cliente,ano.mes, saldo)
cartela= separate(cartela.clientes, ano.mes,into = c("ANO", "MES"))

#############################################################
# Dataframes: Tidy---dados organizados de forma consistente
# Funcoes: unite
# 
##############################################################
library(tidyverse)
# exemplo anterior
cliente = c("Joao","Joao","Erica","Erica")
ano.mes= c("2021.jan","2021.fev", "2021.jan","2021.fev")
saldo   = c( 100,120,200,240)
cartela.clientes= data.frame(cliente,ano.mes, saldo)
cartela= separate(cartela.clientes, ano.mes,into = c("ANO", "MES"))
cartela.unida= unite(cartela,"ano e mes", c("ANO","MES"))

#############################################################
# Visualizacao de dados usando ggplot2
# Camadas
# 1.data: dados para plotar
# 2.aesthetics(aes): o que vai em x e y
# 3.geometries(geo): como o grafico vai ser representado visualmente
# 4.facets : sub-graficos
# 5.stats: transformacoes estatisticas
# 6.coordinates: coordenadas para plotar
# 7.themes: cores, fontes, etc.
# Os tres primeiros sao obrigatorios
# Ver resumos do ggplot2:
# https://www.rstudio.com/resources/cheatsheets/
#
# Nesta aula: sc ( scatterplot: graficos de pontos)
##############################################################
library(tidyverse)
# notas de 6 alunos, dois de cada pais, em matematica e geografia
#criando um data frame que usaremos nos exemplos
adultos= c(1:60)
b=  rep("Brasil",20)
u = rep("USA",20)
a = rep("Alemanha",20)
pais= c(b,u,a)
genero= c("F","M")
set.seed(1234)
sexo= sample(genero,60, replace =T)
alt.b=  round(rnorm(20,1.5,0.1),2)
alt.u=  round(rnorm(20,1.7,0.1),2)
alt.g = round(rnorm(20,1.8,0.1),2)

p.b=  round(rnorm(20,60,5),2)
p.u=  round(rnorm(20,70,5),2)
p.g = round(rnorm(20,80,5),2)
alturas= c(alt.b, alt.u,alt.g)
pesos=  c(p.b, p.u,p.g)
pessoas= data.frame(adultos, pais,sexo,alturas,pesos)


# 1.data
dados= pessoas
# 1.data e 2.aes
sc= ggplot(dados,aes(alturas,pesos))
# 3.geo
sc+geom_point(aes(color= pais))
# 4.facets
sc+geom_point(aes(color= pais)) +facet_grid(pais~.)
# 5.stats
sc+geom_point(aes(color= pais)) +facet_grid(pais~.)+ stat_smooth()
# 6. coordinates
sc+geom_point(aes(color= pais)) +facet_grid(pais~.)+ stat_smooth()+ 
  coord_cartesian(xlim= c(1.5,1.9))
# 7.themes
sc+geom_point(aes(color= pais)) +facet_grid(pais~.)+ stat_smooth()
+ theme_bw()

# segundo exemplo

sc+geom_point(aes(color= pais)) + stat_smooth()+ theme_minimal()

#############################################################
# Visualizacao de dados usando ggplot2
# Camadas
# 1.data: dados para plotar
# 2.aesthetics(aes): o que vai em x e y, cores
# 3.geometries(geo): tipo de grafico, como o grafico vai ser representado visualmente
# 4.facets : divide em sub-graficos
# 5.stats: transformacoes estatisticas
# 6.coordinates:  limites das coordenadas para plotar
# 7.themes: fundo (cores, fontes, etc.)
# Os tres primeiros sao obrigatorios
# Ver resumos do ggplot2:
# https://www.rstudio.com/resources/cheatsheets/
#
# Nesta aula: hist ( histograma: usado para variaveis continuas)
##############################################################
library(tidyverse)
# vamos usar o mesmo data frame
adultos= c(1:60)
b=  rep("Brasil",20)
u = rep("USA",20)
a = rep("Alemanha",20)
pais= c(b,u,a)
genero= c("F","M")
set.seed(1234)
sexo= sample(genero,60, replace =T)
alt.b=  round(rnorm(20,1.5,0.1),2)
alt.u=  round(rnorm(20,1.7,0.1),2)
alt.g = round(rnorm(20,1.8,0.1),2)

p.b=  round(rnorm(20,60,5),2)
p.u=  round(rnorm(20,70,5),2)
p.g = round(rnorm(20,80,5),2)
alturas= c(alt.b, alt.u,alt.g)
pesos=  c(p.b, p.u,p.g)
pessoas= data.frame(adultos, pais,sexo,alturas,pesos)


# 1.data
dados= pessoas
# 1.data e 2.aes
hist= ggplot(data= dados,aes(x= pesos))
# 3.geo
hist+geom_histogram()
hist+geom_histogram(binwidth = 2)
hist+geom_histogram(binwidth = 2, color="darkslategray")
hist+geom_histogram(binwidth = 2, color="darkslategray", 
                    fill= "darkslategray",
                    alpha= 0.5)
# adicionando um titulo
hist+geom_histogram(binwidth = 2, color="darkslategray", 
                    fill= "darkslategray",
                    alpha= 0.5)+ggtitle("Pesos")
# adicionando lables
hist+geom_histogram(binwidth = 2, color="darkslategray", 
                    fill= "darkslategray",
                    alpha= 0.5)+ggtitle("Pesos")+ labs(y= "Numero de pessoas",x="Kg")         

# 7.themes
hist+geom_histogram(binwidth = 2, color="darkslategray", 
                    fill= "darkslategray",
                    alpha= 0.5)+ggtitle("Pesos")+
                    labs(y= "Numero de pessoas",x="Kg")+
                    theme_minimal()


#############################################################
# Visualizacao de dados usando ggplot2
# Camadas
# 1.data: dados para plotar
# 2.aesthetics(aes): o que vai em x e y
# 3.geometries(geo): como o grafico vai ser representado visualmente
# 4.facets : sub-graficos
# 5.stats: transformacoes estatisticas
# 6.coordinates: coordenadas para plotar
# 7.themes: cores, fontes, etc.
# Os tres primeiros sao obrigatorios
# Ver resumos do ggplot2:
# https://www.rstudio.com/resources/cheatsheets/
#
# Nesta aula: bar (  graficos de barras: usado para variaveis categoricas)
##############################################################

# ACRESCENTEI QI NO DATA FRAME
adultos= c(1:60)
b=  rep("Brasil",20)
u = rep("USA",20)
a = rep("Alemanha",20)
pais= c(b,u,a)
genero= c("F","M")
inteligencia= c("Alto","Medio","Baixo")
set.seed(1234)
sexo= sample(genero,60, replace =T)
QI=   sample(inteligencia,60, replace =T)
alt.b=  round(rnorm(20,1.5,0.1),2)
alt.u=  round(rnorm(20,1.7,0.1),2)
alt.g = round(rnorm(20,1.8,0.1),2)

p.b=  round(rnorm(20,60,5),2)
p.u=  round(rnorm(20,70,5),2)
p.g = round(rnorm(20,80,5),2)
alturas= c(alt.b, alt.u,alt.g)
pesos=  c(p.b, p.u,p.g)
pessoas= data.frame(adultos, pais,sexo,QI,alturas,pesos)

# 1.data
dados= pessoas
# Nota: estamos plotando informacoes de sexo uma variavel categorica
# 1.data e 2.aes
bar= ggplot(dados,aes(x= sexo))
# 3.geo
bar+ geom_bar()
bar+ geom_bar()+labs(y="Numero de pessoas", title= "Generos")
bar+ geom_bar()+labs(y="Numero de pessoas", title= "Generos")+ theme_classic()
# Nota: estamos plotando informacoes de sexo,pais duas variaveis categoricas
# plotando por sexo e pais
bar= ggplot(dados,aes(x= sexo, fill = pais))
bar+ geom_bar()+labs(y="Numero de pessoas", title= "Generos")+ theme_classic()
# plotando por pais e sexo
bar= ggplot(dados,aes(x= pais, fill = sexo))
bar+ geom_bar()+labs(y="Numero de pessoas", title= "Generos")+ theme_classic()
# Nota: estamos plotando informacoes de sexo,pais e QI, tres variaveis categoricas!
# 4.facets
bar= ggplot(dados,aes(x= sexo, fill = pais))
bar+ geom_bar()+labs(y="Numero de pessoas", title= "QI por sexo e por pais")+ theme_classic()+
  facet_wrap(~QI)
# Nota: ~ significa "por"(by)
# selecionado por sexo e QI
bar= ggplot(dados,aes(x= sexo, fill = pais))
bar+ geom_bar()+labs(y="Numero de pessoas", title= "Sexo e QI")+ theme_classic()+
  facet_wrap(sexo~QI)  

#############################################################
# Visualizacao de dados usando ggplot2
# Camadas
# 1.data: dados para plotar
# 2.aesthetics(aes): o que vai em x e y
# 3.geometries(geo): como o grafico vai ser representado visualmente
# 4.facets : sub-graficos
# 5.stats: transformacoes estatisticas
# 6.coordinates: coordenadas para plotar
# 7.themes: cores, fontes, etc.
# Os tres primeiros sao obrigatorios
# Ver resumos do ggplot2:
# https://www.rstudio.com/resources/cheatsheets/
#
# Nesta aula: grafico de caixa (box and wiskers plot)
##############################################################

adultos= c(1:60)
b=  rep("Brasil",20)
u = rep("USA",20)
a = rep("Alemanha",20)
pais= c(b,u,a)
genero= c("F","M")
inteligencia= c("Alto","Medio","Baixo")
set.seed(1234)
sexo= sample(genero,60, replace =T)
QI=   sample(inteligencia,60, replace =T)
alt.b=  round(rnorm(20,1.5,0.1),2)
alt.u=  round(rnorm(20,1.7,0.1),2)
alt.g = round(rnorm(20,1.8,0.1),2)

p.b=  round(rnorm(20,60,5),2)
p.u=  round(rnorm(20,70,5),2)
p.g = round(rnorm(20,80,5),2)
alturas= c(alt.b, alt.u,alt.g)
pesos=  c(p.b, p.u,p.g)
pessoas= data.frame(adultos, pais,sexo,QI,alturas,pesos)

# criando o grafico
g.caixa= ggplot(pessoas,aes(x= pais, y= alturas))
g.caixa +geom_boxplot()
g.caixa +geom_boxplot()+ labs(title ="Comparando pesos por paises")+ theme_light()
# nota: as linhas tem 1.5IQR( Interquartile range)

#acrescentando pontos e cores com geom_jitter
  g.caixa +geom_boxplot()+ 
  geom_jitter(width = 0.2, aes(color=sexo))+
  labs("Comparando pesos por paises e sexo")+ theme_light()

# colocando o boxplot na vertical
    g.caixa +geom_boxplot()+ 
    geom_jitter(width = 0.2, aes(color=sexo))+
    labs("Comparando pesos por paises e sexo")+ theme_light()+ coord_flip()
    
#########################################################################
# Mudando a aparência do gráfico criado ( tipo de ponto, formato, etc.)
#
########################################################################   
    
    adultos= c(1:60)
    b=  rep("Brasil",20)
    u = rep("USA",20)
    a = rep("Alemanha",20)
    pais= c(b,u,a)
    genero= c("F","M")
    inteligencia= c("Alto","Medio","Baixo")
    set.seed(1234)
    sexo= sample(genero,60, replace =T)
    QI=   sample(inteligencia,60, replace =T)
    alt.b=  round(rnorm(20,1.5,0.1),2)
    alt.u=  round(rnorm(20,1.7,0.1),2)
    alt.g = round(rnorm(20,1.8,0.1),2)
    
    p.b=  round(rnorm(20,60,5),2)
    p.u=  round(rnorm(20,70,5),2)
    p.g = round(rnorm(20,80,5),2)
    alturas= c(alt.b, alt.u,alt.g)
    pesos=  c(p.b, p.u,p.g)
    pessoas= data.frame(adultos, pais,sexo,QI,alturas,pesos)
   
    # criando o grafico
    g.x.y = ggplot(pessoas,aes(alturas,pesos)) 
    
    g.x.y + geom_point(aes(color= pais))
    
    g.x.y + geom_point(aes(color= pais)) + theme_light()+
    labs(x="Altura", y= "Pesos", title = "Comparando alturas e pesos")
    
    # mudando os tipos de pontos
    
    g.x.y + geom_point(aes(color= pais),shape= 21, fill= "white", size= 3, stroke =2) + theme_light()+
      labs(x="Altura", y= "Pesos", title = "Comparando alturas e pesos")
    
    g.x.y + geom_point(aes(color= pais),shape= 23, fill= "red", size= 3, stroke =6) + theme_light()+
      labs(x="Altura", y= "Pesos", title = "Comparando alturas e pesos")
    
    # adicionando linha de contorno. Nota: se= Standard error
    g.x.y + geom_point(aes(color= pais),shape= 21, fill= "white", size= 3, stroke =2) + theme_light()+
      labs(x="Altura", y= "Pesos", title = "Comparando alturas e pesos")+ stat_smooth(se= FALSE)
    
    