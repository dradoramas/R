#Variaveis Qualitativas
tab_filhos <- table(dados$filhos)    
freq_relFilhos = prop.table(tab_filhos) 

tab_ano<-table(dados$ano_nasc)
freq_relBano = prop.table(tab_ano)

tab_estado<-table(dados$estadoCivil)
freq_relBestado = prop.table(tab_estado)


#colunas verticais
barplot(tab_ano, ylab = "Frequência",xlab = "Anos de Nascimento", col="blue",horiz = F) 

# colunas horizontais
barplot(tab_filhos, horiz = TRUE, xlab = "Frequência", ylab = "Tem Filhos?",col="orange")

# grafico de pizza 
pie(freq_relBestado)
table(dados$estadoCivil)





