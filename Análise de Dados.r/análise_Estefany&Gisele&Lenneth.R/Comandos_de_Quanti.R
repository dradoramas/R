#Renomeando o banco de dados:
dados=c(sample1_campanhaMarketing)

# Variaveis Quantitativas;
Compras_WEB=c(dados$Num_comprasWeb)
Compras_LOJAS=c(dados$Num_comprasLoja)

tab_web <- table(dados$web)    
freq_relWeb = prop.table(tab_web) 

tab_loja <- table(dados$loja)    
freq_relLoja = prop.table(tab_loja) 

#Summarys:

summary(Compras_WEB)
summary(Compras_LOJAS)

#Variância:

var(Compras_WEB)
var(Compras_LOJAS)

#Desvio Padrão:

sd(Compras_WEB)
sd(Compras_LOJAS)

#Histograma: 

hist(Compras_WEB, main = "Histograma: Quantidade de Compras feitas Online", col = "yellow", border = "black", xlab = "Compras feitas online", ylab = "Frequência")
hist(Compras_LOJAS, col = "lightblue", border = "black", xlab = "Compras feitas na loja", ylab = "Frequência", main = "Histograma: Quantidade de Compras feitas na Loja")

#Análise Bivariada:

#BoxPlot
boxplot(Compras_WEB, Compras_LOJAS, col=c("lightblue", "lightpink"),border = "gray20")

#Correlate de Pearson
cor(Compras_WEB, Compras_LOJAS, method = "pearson", use ="complete")
cor(Compras_WEB,Compras_LOJAS, method = "pearson", use ="complete")-> pearson
round(pearson,4)

#Plot
plot(Compras_WEB, Compras_LOJAS)



