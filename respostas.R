setwd("xxxxxxxx")
getwd()

####### pacotes ########

pacotes <- c("dplyr","tidyverse","lubridate","lmtest","generalhoslem",
             "corrplot","FactoMineR","psych","MASS","ordinal")

lapply(pacotes,library,character.only = T)


rm(pacotes)

##### arquivo #####

 instui <- read.csv("um_cinco.csv",
                    header = T,
                    sep = ";",
                    dec = ".",
                    stringsAsFactor = T)


Base_On1 <- read.csv("Base1.csv",
                       header = T,
                       sep = ";",
                       dec = ".",
                       stringsAsFactor = T)


Base_On2 <- read.csv("Base2.csv",
                       header = T,
                       sep = ";",
                       dec = ".",
                       stringsAsFactor = T)

Base_On3 <- read.csv("Base3.csv",
                        header = T,
                        sep = ";",
                        dec = ".",
                        stringsAsFactor = T)

import <- read.csv("um_cinco.csv",
                   header = T,
                   sep = ";",
                   dec = ".")
                   

### preliminar ##

names(Base_On1)

### renomear e separar ##########

### "Carimbo.de.data.hora" ###
date <- Base_On1 $Carimbo.de.data.hora

class(age)

### "Primeiro..poderia.nos.dizer.qual.seu.interesse.academico" ##
int_acad <- Base_On1$Primeiro..poderia.nos.dizer.qual.seu.interesse.academico

### "Qual.sua.idade" ###
age <- Base_On1$Qual.sua.idade

### "Com.qual.genero.voce.se.identifica" ###
gnr <- Base_On1$Com.qual.genero.voce.se.identifica

### Em.qual.regiao.do.Brasil.voce.mora.1 ###
region <- Base_On1$Em.qual.regiao.do.Brasil.voce.mora

### Quais.redes.sociais.voce.mais.utiliza ###
rede_soc <- Base_On1$Quais.redes.sociais.voce.mais.utiliza 

### Quais.canais.de.noticia.voce.costuma.acessar ###
can_notic <- Base_On1$Quais.canais.de.noticia.voce.costuma.acessar

### Nos.momentos.de.lazer.o.que.voce.gosta.de.fazer ###
lazer <- Base_On1$Nos.momentos.de.lazer.o.que.voce.gosta.de.fazer

### "Que.tipo.de.entretenimento.voce.mais.consome" ###
entr <- Base_On1$Que.tipo.de.entretenimento.voce.mais.consome

### "Dentro.do.cenario.politico.em.que.vivemos..qual.sua.posicão.em.relacão.ao.atual.governo ###
pos_gov <- Base_On1$Dentro.do.cenario.politico.em.que.vivemos..qual.sua.posicao.em.relacao.ao.atual.governo

### Em.que.momento.voce.se.encontra.como.estudante ###
mom_estd <- Base_On1$Em.que.momento.voce.se.encontra.como.estudante

### Como.e.sua.rotina.enquanto.estudante ###
rot_estd <- Base_On1$Como.e.sua.rotina.enquanto.estudante

### Qual.curso.voce.pretende.estudar### 
Q_curso <- Base_On1$Qual.curso.voce.pretende.estudar

### Como.voce.se.prepara.para.o.vestibular ###
prep_vest <- Base_On1$Como.voce.se.prepara.para.o.vestibular

### Qual.o.envolvimento.dos.seus.pais.durante.sua.preparacão.para.o.vestibular ###
env_pais <- Base_On1$Qual.o.envolvimento.dos.seus.pais.durante.sua.preparac.o.para.o.vestibular

### "Como.voce.costuma.buscar.informacoes.sobre.as.instituicoes.de.ensino.onde.voce.gostaria.de.estudar" ###                                            
bsc_inst_ens <- Base_On1$Como.voce.costuma.busca

### "O.que.voce.considera.importante.na.hora.de.escolher.uma.instituicão.de.ensino.superior.Ser.uma.instituicão.renomada" ##
imprt_crs <- instui$O.que.voce.considera.importante.na.hora.de.escolher.uma.instituicÆo.de.ensino.superior.Ser.uma.instituicÆo.renomada

### O.que.voce.considera.importante.na.hora.de.escolher.uma.instituicão.de.ensino.superior.Ser.uma.instituicão.privada ###
imprt_crs_prvd <- instui$O.que.voce.considera.importante.na.hora.de.escolher.uma.instituicÆo.de.ensino.superior.Ser.uma.instituicÆo.privada

### O.que.voce.considera.importante.na.hora.de.escolher.uma.instituicão.de.ensino.superior.Ser.uma.instituicão.atualizada.com.o.mercado" ###
imprt_crs_mrcd <- instui$O.que.voce.considera.importante.na.hora.de.escolher.uma.instituicÆo.de.ensino.superior.Ser.uma.instituicÆo.atualizada.com.o.mercado                                             

### O.que.voce.considera.importante.na.hora.de.escolher.uma.instituicão.de.ensino.superior.Ser.gratuita.ou.ter.um.preco.acessivel ###
imprt_crs_prc <- instui$O.que.voce.considera.importante.na.hora.de.escolher.uma.instituicÆo.de.ensino.superior.Ser.gratuita.ou.ter.um.preco.acessivel

### O.que.voce.considera.importante.na.hora.de.escolher.uma.instituicão.de.ensino.superior.Ter.uma.boa.estrutura.fiscia.e.pedagogica" ###     
imprt_crs_strt <- instui$O.que.voce.considera.importante.na.hora.de.escolher.uma.instituicÆo.de.ensino.superior.Ter.uma.boa.estrutura.fiscia.e.pedagogica   

### "O.que.voce.considera.importante.na.hora.de.escolher.uma.instituicão.de.ensino.superior.Ter.um.bom.indicie.de.empregabilidade.aPos.formado ###
imprt_crs_mprg <- instui$O.que.voce.considera.importante.na.hora.de.escolher.uma.instituicÆo.de.ensino.superior.Ter.um.bom.indicie.de.empregabilidade.aPos.formado

### O.que.voce.considera.importante.na.hora.de.escolher.uma.instituicão.de.ensino.superior.Ter.uma.boa.grade.de.ensino.incluindo.aulas.praticas ###
imprt_crs_grd <- instui$O.que.voce.considera.importante.na.hora.de.escolher.uma.instituicÆo.de.ensino.superior.Ter.uma.boa.grade.de.ensino.incluindo.aulas.praticas

### O.que.voce.considera.importante.na.hora.de.escolher.uma.instituicão.de.ensino.superior.Ter.programas.de.intercâmbio ###
imprt_crs_intr <- instui$O.que.voce.considera.importante.na.hora.de.escolher.uma.instituicÆo.de.ensino.superior.Ter.programas.de.intercfmbio                          

### O.que.voce.considera.importante.na.hora.de.escolher.uma.instituicao.de.ensino.superior.Ter.programas.de.bolsas.de.estudo.e.estagio.interno ###
imprt_crs_bls <- instui$O.que.voce.considera.importante.na.hora.de.escolher.uma.instituicao.de.ensino.superior.Ter.programas.de.bolsas.de.estudo.e.estagio.interno

### Quais.das.seguintes.atividades.seriam.do.seu.interesse.enquanto.estudante.de.Graduacao ###
q_atv <- Base_On1$Quais.das.seguintes.atividades.seriam.do.seu.interesse.enquanto.estudante.de.Graduacao

### "Quanto.a.localizacao.da.instituicao.o.que.voce.considera.importante" ###
imprt_crs_lcl <- Base_On1$Quanto.a.localizacao.da.instituicao.o.que.voce.considera.importante

### "Pensando.em.estudar.longe.de.casa..quais.beneficios.e.atrativos.uma.cidade.precisa.ter ###
cidade <- Base_On1$Pensando.em.estudar.longe.de.casa..quais.beneficios.e.atrativos.uma.cidade.precisa.ter                                                        

### "Onde.voce.costuma.ver.anuncios.sobre.cursos.vestibulares.e.instituicoes" ###
anunc <- Base_On1$Onde.voce.costuma.ver.anuncios.sobre.cursos.vestibulares.e.instituicoes

### juntar as colunas separadas ###

age <- as.factor(paste0(Base_On1$Qual.sua.idade,
                        Base_On2$Qual.sua.idade1,
                        Base_On3$Qual.sua.idade2))

gnr <- as.factor(paste0(Base_On1$Com.qual.genero.voce.se.identifica,
                        Base_On2$Com.qual.genero.voce.se.identifica1,
                        Base_On3$Com.qual.genero.voce.se.identifica2))

region <- as.factor(paste0(Base_On1$Em.qual.regiao.do.Brasil.voce.mora,
                           Base_On2$Em.qual.regiao.do.Brasil.voce.mora1,
                           Base_On3$Em.qual.regiao.do.Brasil.voce.mora2))

rede_soc <- as.factor(paste0(Base_On1$Quais.redes.sociais.voce.mais.utiliza,
                             Base_On2$Quais.redes.sociais.voce.mais.utiliza1,
                             Base_On3$Quais.redes.sociais.voce.mais.utiliza2)) 

can_notic <- as.factor(paste0(Base_On1 $Quais.canais.de.noticia.voce.costuma.acessar,
                              Base_On2$Quais.canais.de.noticia.voce.costuma.acessar1,
                              Base_On3$Quais.canais.de.noticia.voce.costuma.acessar2)) 

lazer <- as.factor(paste0(Base_On1$Nos.momentos.de.lazer.o.que.voce.gosta.de.fazer,
                          Base_On2$Nos.momentos.de.lazer.o.que.voce.gosta.de.fazer1,
                          Base_On3$Nos.momentos.de.lazer.o.que.voce.gosta.de.fazer2))

entr <- as.factor(paste0(Base_On1$Que.tipo.de.entretenimento.voce.mais.consome,
                         Base_On2$Que.tipo.de.entretenimento.voce.mais.consome1,
                         Base_On3$Que.tipo.de.entretenimento.voce.mais.consome2))

env_pais <- as.factor(paste0(Base_On1$Qual.o.envolvimento.dos.seus.pais.durante.sua.preparac.o.para.o.vestibular))


bsc_inst_ens <- as.factor(paste0(Base_On1$Como.voce.costuma.buscar.informacoes.sobre.as.instituicoes.de.ensino.onde.voce.gostaria.de.estudar,
                                 Base_On2$Como.voce.costuma.buscar.informacoes.sobre.as.instituicoes.de.ensino.onde.voce.gostaria.de.estudar1,
                                 Base_On3$Como.voce.buscaria.informacoes.sobre.as.instituicoes.de.ensino2))

q_atv <- as.factor(paste0(Base_On1$Quais.das.seguintes.atividades.seriam.do.seu.interesse.enquanto.estudante.de.Graduacao,
                          Base_On2$Quais.das.seguintes.atividades.seriam.do.seu.interesse.enquanto.estudante.de.PosGraduacao1,
                          Base_On3$Quais.das.seguintes.atividades.seriam.do.seu.interesse.enquanto.estudante.de.Graduacao.ou.Pos.GraduacÆo2))
                               

imprt_crs_lcl <- as.factor(paste0(Base_On1$Quanto.a.localizacao.da.instituicao.o.que.voce.considera.importante,
                                  Base_On2$Quanto.a.localizacao.da.instituicao.o.que.voce.considera.importante1,
                                  Base_On3$Quanto.a.localizacao.da.instituicao.o.que.voce.consideraria.importante2))



####imnportancia dos cursos########################

imprt_crs_rnm  <- import$O.que.voce.considera.importante.na.hora.de.escolher.uma.instituicÆo.de.ensino.superior.Ser.uma.instituicÆo.renomada
imprt_crs_bls  <- import$O.que.voce.considera.importante.na.hora.de.escolher.uma.instituicao.de.ensino.superior.Ter.programas.de.bolsas.de.estudo.e.estagio.interno
imprt_crs_grd  <- import$O.que.voce.considera.importante.na.hora.de.escolher.uma.instituicÆo.de.ensino.superior.Ter.atividades.complementares.na.grade.de.ensino
imprt_crs_intr <- import$O.que.voce.considera.importante.na.hora.de.escolher.uma.instituicÆo.de.ensino.superior.Ter.programas.de.intercfmbio
imprt_crs_mprg <- import$O.que.voce.considera.importante.na.hora.de.escolher.uma.instituicÆo.de.ensino.superior.Ter.um.bom.indicie.de.empregabilidade.aPos.formado
imprt_crs_mrcd <- import$O.que.voce.considera.importante.na.hora.de.escolher.uma.instituicÆo.de.ensino.superior.Ser.uma.instituicÆo.atualizada.com.o.mercado
imprt_crs_prc  <- import$O.que.voce.considera.importante.na.hora.de.escolher.uma.instituicÆo.de.ensino.superior.Ser.gratuita.ou.ter.um.preco.acessivel
imprt_crs_pbl  <- import$O.que.voce.considera.importante.na.hora.de.escolher.uma.instituicÆo.de.ensino.superior.Ser.uma.instituicÆo.publica
imprt_crs_prvd <- import$O.que.voce.considera.importante.na.hora.de.escolher.uma.instituicÆo.de.ensino.superior.Ser.uma.instituicÆo.privada
imprt_crs_strt <- import$O.que.voce.considera.importante.na.hora.de.escolher.uma.instituicÆo.de.ensino.superior.Ter.uma.boa.estrutura.fiscia.e.pedagogica

######importancia dos cursos privados###############
par(mfrow = c(3,3))

hist(imprt_crs_pbl,
     xlab = "ser pública?")
hist(imprt_crs_prvd,
     xlab = "ser privada?")
hist(imprt_crs_rnm,
     xlab = "ser renomada?")
hist(imprt_crs_mprg,
     xlab = "Ter um bom índice de empregabilidade após formado?")
hist(imprt_crs_mrcd,
     xlab = "Ser uma instituicão atualizada com o mercado?")
hist(imprt_crs_prc,
     xlab = "Ser gratuita ou ter um preco acessivel?")
hist(imprt_crs_strt,
     xlab = "Ter uma boa estrutura física e pedagogica?")
hist(imprt_crs_grd,
     xlab = "Ter atividades complementares na grade de ensino?")
hist(imprt_crs_bls,
     xlab = "Ter programas de bolsas de estudo e estagio interno?")




par(mfrow = c(2,4))

  
plot(imprt_crs_prvd,
     imprt_crs_prc,
      xlab = "considera a escola privada",
      ylab = "preços")

  
plot(imprt_crs_prvd,
     imprt_crs_mrcd,
     xlab = "considera a escola privada",
     ylab = "bem avaliada no mercado")  

plot(imprt_crs_prvd,
     imprt_crs_mprg,
     xlab = "considera a escola privada",
     ylab = "empregabilidade")   
  
plot(imprt_crs_prvd,
     imprt_crs_strt,
     xlab = "considera a escola privada",
     ylab = "estrutura")

plot(imprt_crs_prvd,
     imprt_crs_grd,
     xlab = "considera a escola privada",
     ylab = "grade")  
  
plot(imprt_crs_prvd,
     imprt_crs_bls,
     xlab = "considera a escola privada",
     ylab = "grade")  

plot(imprt_crs_prvd,
     imprt_crs_intr,
     xlab = "considera a escola privada",
     ylab = "intercambio")  

plot(imprt_crs_prvd,
     imprt_crs_rnm,
     xlab = "considera a escola privada",
     ylab = "renome")  

######importancia dos cursos privados###############

par(mfrow = c(2,4))

plot(imprt_crs_pbl,
     imprt_crs_prc,
     xlab = "considera a escola publica",
     ylab = "preços")  

plot(imprt_crs_pbl,
     imprt_crs_mrcd,
     xlab = "considera a escola publica",
     ylab = "bem avaliada no mercado")  

plot(imprt_crs_pbl,
     imprt_crs_mprg,
     xlab = "considera a escola publica",
     ylab = "empregabilidade")   

plot(imprt_crs_pbl,
     imprt_crs_strt,
     xlab = "considera a escola publica",
     ylab = "estrutura")

plot(imprt_crs_pbl,
     imprt_crs_grd,
     xlab = "considera a escola publica",
     ylab = "grade")  

plot(imprt_crs_pbl,
     imprt_crs_bls,
     xlab = "considera a escola publica",
     ylab = "grade")  

plot(imprt_crs_pbl,
     imprt_crs_intr,
     xlab = "considera a escola publica",
     ylab = "grade")  

  
plot(imprt_crs_pbl,
     imprt_crs_rnm,
     xlab = "considera a escola publica",
     ylab = "renome")    
  
  
importancia <- cbind(imprt_crs_bls,
                     imprt_crs_grd,
                     imprt_crs_intr,
                     imprt_crs_mprg,
                     imprt_crs_mrcd,
                     imprt_crs_pbl,
                     imprt_crs_prc,
                     imprt_crs_prvd,
                     imprt_crs_rnm,
                     imprt_crs_strt)

colnames(importancia) <- c("bolsa",
                           "grade",
                           "intercambio",
                            "emprego",
                           "mercado",
                           "ser publica",
                           "menor preço",
                           "ser privado",
                           "renome",
                           "estrutura")


cor_importancia <- cor(importancia,
                       use = "complete.obs")
  

corrplot(cor_importancia,
         method = "circle")  
##### pca com os valores ####

#### pensando em reduzir as dimensoes referentes 
#### estrutura emprego e mercado


quali <- cbind(imprt_crs_mprg,
                imprt_crs_mrcd,
                imprt_crs_strt,
               )  

colnames(quali) <-     c("emprego",
                          "mercado",
                          "estrutura")

####correlograma#########
  
corr_quali <-  cor(quali,
                   use = "complete.obs")

par(mfrow = c(1,2))

corrplot(corr_quali,
         method = "circle")

cortest.bartlett(corr_quali)            
  
#####PCA###############

qualiNov <- PCA(quali,
                scale.unit = F,
                ncp = 3)
  
par(mfrow = c(1,2))  
  
qualiNovInd <- c(0.9378414*imprt_crs_mprg +
                 0.5719196*imprt_crs_mrcd +
                 0.8286164*imprt_crs_strt)


qualiNovInd2 <- predict(qualiNov, quali)

summary(qualiNovInd2)
  
hist(qualiNovInd)  
  
###correlação com qualidade###

imp_com_quali <- cbind(qualiNovInd,
                       imprt_crs_rnm,
                       imprt_crs_bls,
                       imprt_crs_prc, 
                       imprt_crs_intr)  

colnames(imp_com_quali) <- c("qualidade",
                             "renome",
                             "bolsa",
                             "menor preco",
                             "intercambio")  
  
  
 cor(imp_com_quali,
     use = "complete.obs") 
  
### reduzindo as dimensoes para intercambio bolsa ##
 
 

beneficio <- cbind(imprt_crs_bls,
                    imprt_crs_intr)
  
colnames(beneficio) <- c("bolsa",
                          "intercambio")
 
beneficioPC <- PCA(beneficio,
                   scale.unit = F,
                   ncp = 2)

beneficNovInd <- c(1.112303*imprt_crs_bls +
                     1.090964*imprt_crs_intr)



###Logit###

dadosLogit <- cbind(as.factor(imprt_crs_rnm), 
                      beneficNovInd,
                      qualiNovInd)

int.fit <- polr(as.factor(imprt_crs_rnm) ~ 
                beneficNovInd +
                qualiNovInd,
                data = dadosLogit)

int.fitPred <- predict(int.fit, dadosLogit, type = "p")

summary(int.fit)
coeftest(int.fit)

cor(imprt_crs_rnm,
    qualiNovInd, use = "complete.obs")
##mineracao de palavras##

pacotes <- c("sentimentr","qdap","wordcloud","plotrix","dendextend","ggthemes", "Rweka",
             "ggplot2", "tm")

lapply(pacotes, library, character.only = T)



#principais palavras por resposta#

####remover as preposicoes e congeneres em atividade###
limpeza <- function(x) {
  x <-  removeNumbers(x)
  x <-  stripWhitespace(x)
  x <-  removeWords(x,stopwords(kind = 'portuguese')
  )
}

#texto atividades#
texto_ativ <- "Monitoria (Auxilia outros estudantes ao longo do seu aprendizado) Atividades em laboratorio (Experimentos Pesquisas Testes Exames dentre outras) Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)                                                                                                                                                                                                                                                                                                                               
   Empreendedorismo                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
   Monitoria (Auxilia outros estudantes ao longo do seu aprendizado) Atividades em laboratorio (Experimentos Pesquisas Testes Exames dentre outras) Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)                                                                                                                                                                                                                                                                                                                               
   Atividades em laboratorio (Experimentos Pesquisas Testes Exames dentre outras) Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)                                                                                                                                                                                                                                                                                                                                                                                                 
   Monitoria (Auxilia outros estudantes ao longo do seu aprendizado) Atividades em laboratorio (Experimentos Pesquisas Testes Exames dentre outras) Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)                                                                                                                                                                                                                                                                                                                               
   Monitoria (Auxilia outros estudantes ao longo do seu aprendizado) Empreendedorismo Associacao Atletica Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)                                                                                                                                                                                                                                                                                                                                                                         
   Monitoria (Auxilia outros estudantes ao longo do seu aprendizado)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
   Nucleo Estudantil (Oferece suporte aos estudantes ao longo do curso)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
   Empreendedorismo                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
  Nucleo Estudantil (Oferece suporte aos estudantes ao longo do curso)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
 Associacao Atletica Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
  Empreendedorismo Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)                                                                                                                                                                                                                                                                                                                                                                                                                                                               
 Monitoria (Auxilia outros estudantes ao longo do seu aprendizado) Empreendedorismo                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
 Monitoria (Auxilia outros estudantes ao longo do seu aprendizado) Empreendedorismo Associacao Atletica                                                                                                                                                                                                                                                                                                                                                                                                                                                
 Empreendedorismo Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)                                                                                                                                                                                                                                                                                                                                                                                                                                                               
 Monitoria (Auxilia outros estudantes ao longo do seu aprendizado) Empreendedorismo Atividades em laboratorio (Experimentos Pesquisas Testes Exames dentre outras) E-sports (Modalidade de esportes eletronicos) Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)                                                                                                                                                                                                                                                                
 Monitoria (Auxilia outros estudantes ao longo do seu aprendizado) Empreendedorismo Atividades em laboratorio (Experimentos Pesquisas Testes Exames dentre outras) Nucleo Estudantil (Oferece suporte aos estudantes ao longo do curso) Diretorio Academico - DA (Representa os estudantes de um determinado curso) Diretorio Central de Estudantes - DCE (Representa todos os estudantes de uma universidade) Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)                                                                  
 Associacao Atletica                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   
 Monitoria (Auxilia outros estudantes ao longo do seu aprendizado) Atividades em laboratorio (Experimentos Pesquisas Testes Exames dentre outras) Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)                                                                                                                                                                                                                                                                                                                               
Monitoria (Auxilia outros estudantes ao longo do seu aprendizado) Empreendedorismo                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
 Empreendedorismo E-sports (Modalidade de esportes eletronicos)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
 Monitoria (Auxilia outros estudantes ao longo do seu aprendizado) Empreendedorismo                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
 Monitoria (Auxilia outros estudantes ao longo do seu aprendizado) Atividades em laboratorio (Experimentos Pesquisas Testes Exames dentre outras)                                                                                                                                                                                                                                                                                                                                                                                                      
 Monitoria (Auxilia outros estudantes ao longo do seu aprendizado) Empreendedorismo Atividades em laboratorio (Experimentos Pesquisas Testes Exames dentre outras) Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)                                                                                                                                                                                                                                                                                                              
 Atividades em laboratorio (Experimentos Pesquisas Testes Exames dentre outras) Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)                                                                                                                                                                                                                                                                                                                                                                                                 
 Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
 Monitoria (Auxilia outros estudantes ao longo do seu aprendizado) Empreendedorismo Atividades em laboratorio (Experimentos Pesquisas Testes Exames dentre outras) Diretorio Academico - DA (Representa os estudantes de um determinado curso) Diretorio Central de Estudantes - DCE (Representa todos os estudantes de uma universidade) Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)                                                                                                                                       
 Monitoria (Auxilia outros estudantes ao longo do seu aprendizado) Empreendedorismo Atividades em laboratorio (Experimentos Pesquisas Testes Exames dentre outras) Diretorio Academico - DA (Representa os estudantes de um determinado curso) Diretorio Central de Estudantes - DCE (Representa todos os estudantes de uma universidade) Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)                                                                                                                                       
 Monitoria (Auxilia outros estudantes ao longo do seu aprendizado) Empreendedorismo E-sports (Modalidade de esportes eletronicos)                                                                                                                                                                                                                                                                                                                                                                                                                      
 Empreendedorismo                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
 Monitoria (Auxilia outros estudantes ao longo do seu aprendizado) Empreendedorismo Atividades em laboratorio (Experimentos Pesquisas Testes Exames dentre outras) Associacao Atletica E-sports (Modalidade de esportes eletronicos) Nucleo Estudantil (Oferece suporte aos estudantes ao longo do curso) Diretorio Academico - DA (Representa os estudantes de um determinado curso) Diretorio Central de Estudantes - DCE (Representa todos os estudantes de uma universidade) Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)
Atividades em laboratorio (Experimentos Pesquisas Testes Exames dentre outras) E-sports (Modalidade de esportes eletronicos) Nucleo Estudantil (Oferece suporte aos estudantes ao longo do curso) Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)                                                                                                                                                                                                                                                                              
 Monitoria (Auxilia outros estudantes ao longo do seu aprendizado) Atividades em laboratorio (Experimentos Pesquisas Testes Exames dentre outras) Associacao Atletica E-sports (Modalidade de esportes eletronicos)                                                                                                                                                                                                                                                                                                                                    
 Empreendedorismo Atividades em laboratorio (Experimentos Pesquisas Testes Exames dentre outras) E-sports (Modalidade de esportes eletronicos) Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)                                                                                                                                                                                                                                                                                                                                  
 Monitoria (Auxilia outros estudantes ao longo do seu aprendizado) Empreendedorismo Nucleo Estudantil (Oferece suporte aos estudantes ao longo do curso) Diretorio Central de Estudantes - DCE (Representa todos os estudantes de uma universidade) Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)                                                                                                                                                                                                                             
 Monitoria (Auxilia outros estudantes ao longo do seu aprendizado) Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)                                                                                                                                                                                                                                                                                                                                                                                                              
 Empreendedorismo Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)                                                                                                                                                                                                                                                                                                                                                                                                                                                               
 Empreendedorismo Atividades em laboratorio (Experimentos Pesquisas Testes Exames dentre outras) Associacao Atletica Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)                                                                                                                                                                                                                                                                                                                                                            
Monitoria (Auxilia outros estudantes ao longo do seu aprendizado) Atividades em laboratorio (Experimentos Pesquisas Testes Exames dentre outras) Nucleo Estudantil (Oferece suporte aos estudantes ao longo do curso)                                                                                                                                                                                                                                                                                                                                 
  Monitoria (Auxilia outros estudantes ao longo do seu aprendizado) E-sports (Modalidade de esportes eletronicos) Nucleo Estudantil (Oferece suporte aos estudantes ao longo do curso) Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)                                                                                                                                                                                                                                                                                           
Empreendedorismo                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
Empreendedorismo Atividades em laboratorio (Experimentos Pesquisas Testes Exames dentre outras) Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)                                                                                                                                                                                                                                                                                                                                                                                
Empreendedorismo Atividades em laboratorio (Experimentos Pesquisas Testes Exames dentre outras) Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)                                                                                                                                                                                                                                                                                                                                                                                
Monitoria (Auxilia outros estudantes ao longo do seu aprendizado)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
 Monitoria (Auxilia outros estudantes ao longo do seu aprendizado) Empreendedorismo Associacao Atletica Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)                                                                                                                                                                                                                                                                                                                                                                         
 Monitoria (Auxilia outros estudantes ao longo do seu aprendizado)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
 Monitoria (Auxilia outros estudantes ao longo do seu aprendizado) Empreendedorismo Atividades em laboratorio (Experimentos Pesquisas Testes Exames dentre outras) E-sports (Modalidade de esportes eletronicos) Nucleo Estudantil (Oferece suporte aos estudantes ao longo do curso) Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)                                                                                                                                                                                           
 Monitoria (Auxilia outros estudantes ao longo do seu aprendizado) E-sports (Modalidade de esportes eletronicos)                                                                                                                                                                                                                                                                                                                                                                                                                                       
Monitoria (Auxilia outros estudantes ao longo do seu aprendizado) Atividades em laboratorio (Experimentos Pesquisas Testes Exames dentre outras) Nucleo Estudantil (Oferece suporte aos estudantes ao longo do curso) Diretorio Academico - DA (Representa os estudantes de um determinado curso) Diretorio Central de Estudantes - DCE (Representa todos os estudantes de uma universidade) Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)                                                                                   
 Monitoria (Auxilia outros estudantes ao longo do seu aprendizado) Empreendedorismo                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
 Empreendedorismo Atividades em laboratorio (Experimentos Pesquisas Testes Exames dentre outras)                                                                                                                                                                                                                                                                                                                                                                                                                                                       
Monitoria (Auxilia outros estudantes ao longo do seu aprendizado)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
 Monitoria (Auxilia outros estudantes ao longo do seu aprendizado) Associacao Atletica Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)                                                                                                                                                                                                                                                                                                                                                                                          
 Empreendedorismo Atividades em laboratorio (Experimentos Pesquisas Testes Exames dentre outras)                                                                                                                                                                                                                                                                                                                                                                                                                                                       
 Monitoria (Auxilia outros estudantes ao longo do seu aprendizado)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
 Atividades em laboratorio (Experimentos Pesquisas Testes Exames dentre outras) Associacao Atletica E-sports (Modalidade de esportes eletronicos) Nucleo Estudantil (Oferece suporte aos estudantes ao longo do curso) Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)                                                                                                                                                                                                                                                          
 Monitoria (Auxilia outros estudantes ao longo do seu aprendizado) Atividades em laboratorio (Experimentos Pesquisas Testes Exames dentre outras) Nucleo Estudantil (Oferece suporte aos estudantes ao longo do curso) Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)                                                                                                                                                                                                                                                          
Atividades em laboratorio (Experimentos Pesquisas Testes Exames dentre outras)                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
 Atividades em laboratorio (Experimentos Pesquisas Testes Exames dentre outras) E-sports (Modalidade de esportes eletronicos) Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)                                                                                                                                                                                                                                                                                                                                                   
 Atividades em laboratorio (Experimentos Pesquisas Testes Exames dentre outras)                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
 Monitoria (Auxilia outros estudantes ao longo do seu aprendizado)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
 Atividades em laboratorio (Experimentos Pesquisas Testes Exames dentre outras) Nucleo Estudantil (Oferece suporte aos estudantes ao longo do curso) Diretorio Academico - DA (Representa os estudantes de um determinado curso) Diretorio Central de Estudantes - DCE (Representa todos os estudantes de uma universidade) Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)                                                                                                                                                     
 Monitoria (Auxilia outros estudantes ao longo do seu aprendizado) Nucleo Estudantil (Oferece suporte aos estudantes ao longo do curso) Diretorio Academico - DA (Representa os estudantes de um determinado curso)                                                                                                                                                                                                                                                                                                                                    
  Empreendedorismo Atividades em laboratorio (Experimentos Pesquisas Testes Exames dentre outras) Associacao Atletica E-sports (Modalidade de esportes eletronicos) Diretorio Academico - DA (Representa os estudantes de um determinado curso) Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)                                                                                                                                                                                                                                  
 Monitoria (Auxilia outros estudantes ao longo do seu aprendizado) Atividades em laboratorio (Experimentos Pesquisas Testes Exames dentre outras) E-sports (Modalidade de esportes eletronicos)                                                                                                                                                                                                                                                                                                                                                        
 Monitoria (Auxilia outros estudantes ao longo do seu aprendizado)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
 Monitoria (Auxilia outros estudantes ao longo do seu aprendizado) Atividades em laboratorio (Experimentos Pesquisas Testes Exames dentre outras) Diretorio Academico - DA (Representa os estudantes de um determinado curso) Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)                                                                                                                                                                                                                                                   
 Atividades em laboratorio (Experimentos Pesquisas Testes Exames dentre outras) Nucleo Estudantil (Oferece suporte aos estudantes ao longo do curso) Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)                                                                                                                                                                                                                                                                                                                            
 Monitoria (Auxilia outros estudantes ao longo do seu aprendizado) Atividades em laboratorio (Experimentos Pesquisas Testes Exames dentre outras) Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)                                                                                                                                                                                                                                                                                                                               
Monitoria (Auxilia outros estudantes ao longo do seu aprendizado) Empreendedorismo Atividades em laboratorio (Experimentos Pesquisas Testes Exames dentre outras) Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)                                                                                                                                                                                                                                                                                                              
 Monitoria (Auxilia outros estudantes ao longo do seu aprendizado) Empreendedorismo Atividades em laboratorio (Experimentos Pesquisas Testes Exames dentre outras) E-sports (Modalidade de esportes eletronicos) Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)                                                                                                                                                                                                                                                                
  Monitoria (Auxilia outros estudantes ao longo do seu aprendizado) Empreendedorismo Atividades em laboratorio (Experimentos Pesquisas Testes Exames dentre outras) E-sports (Modalidade de esportes eletronicos) Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)                                                                                                                                                                                                                                                                
 Empreendedorismo Atividades em laboratorio (Experimentos Pesquisas Testes Exames dentre outras) Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)                                                                                                                                                                                                                                                                                                                                                                                
 Nucleo Estudantil (Oferece suporte aos estudantes ao longo do curso) Diretorio Central de Estudantes - DCE (Representa todos os estudantes de uma universidade) Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)                                                                                                                                                                                                                                                                                                                
 Atividades em laboratorio (Experimentos Pesquisas Testes Exames dentre outras) Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)                                                                                                                                                                                                                                                                                                                                                                                                 
 Monitoria (Auxilia outros estudantes ao longo do seu aprendizado) E-sports (Modalidade de esportes eletronicos) Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)                                                                                                                                                                                                                                                                                                                                                                
Empreendedorismo Diretorio Academico - DA (Representa os estudantes de um determinado curso) Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)                                                                                                                                                                                                                                                                                                                                                                                   
 Empreendedorismo Atividades em laboratorio (Experimentos Pesquisas Testes Exames dentre outras)                                                                                                                                                                                                                                                                                                                                                                                                                                                       
 Empreendedorismo Atividades em laboratorio (Experimentos Pesquisas Testes Exames dentre outras) Diretorio Central de Estudantes - DCE (Representa todos os estudantes de uma universidade) Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)                                                                                                                                                                                                                                                                                     
 Monitoria (Auxilia outros estudantes ao longo do seu aprendizado) Atividades em laboratorio (Experimentos Pesquisas Testes Exames dentre outras) E-sports (Modalidade de esportes eletronicos) Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)                                                                                                                                                                                                                                                                                 
 Empreendedorismo Atividades em laboratorio (Experimentos Pesquisas Testes Exames dentre outras)                                                                                                                                                                                                                                                                                                                                                                                                                                                       
 Atividades em laboratorio (Experimentos Pesquisas Testes Exames dentre outras) Nucleo Estudantil (Oferece suporte aos estudantes ao longo do curso)                                                                                                                                                                                                                                                                                                                                                                                                   
 Atividades em laboratorio (Experimentos Pesquisas Testes Exames dentre outras) Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)                                                                                                                                                                                                                                                                                                                                                                                                 
 Monitoria (Auxilia outros estudantes ao longo do seu aprendizado) Atividades em laboratorio (Experimentos Pesquisas Testes Exames dentre outras) E-sports (Modalidade de esportes eletronicos) Diretorio Academico - DA (Representa os estudantes de um determinado curso) Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)                                                                                                                                                                                                     
 Monitoria (Auxilia outros estudantes ao longo do seu aprendizado) Empreendedorismo Atividades em laboratorio (Experimentos Pesquisas Testes Exames dentre outras) Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)                                                                                                                                                                                                                                                                                                              
 Monitoria (Auxilia outros estudantes ao longo do seu aprendizado) Associacao Atletica                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
  Monitoria (Auxilia outros estudantes ao longo do seu aprendizado) Atividades em laboratorio (Experimentos Pesquisas Testes Exames dentre outras) Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)                                                                                                                                                                                                                                                                                                                               
 Monitoria (Auxilia outros estudantes ao longo do seu aprendizado) Empreendedorismo                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
 Monitoria (Auxilia outros estudantes ao longo do seu aprendizado) Atividades em laboratorio (Experimentos Pesquisas Testes Exames dentre outras) Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)                                                                                                                                                                                                                                                                                                                               
 Empreendedorismo Atividades em laboratorio (Experimentos Pesquisas Testes Exames dentre outras) Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)                                                                                                                                                                                                                                                                                                                                                                                
  Monitoria (Auxilia outros estudantes ao longo do seu aprendizado) Atividades em laboratorio (Experimentos Pesquisas Testes Exames dentre outras) E-sports (Modalidade de esportes eletronicos) Nucleo Estudantil (Oferece suporte aos estudantes ao longo do curso) Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)                                                                                                                                                                                                            
 Trabalho ne nao teria tempo                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
 Empreendedorismo                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
  Empreendedorismo Atividades em laboratorio (Experimentos Pesquisas Testes Exames dentre outras) Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)                                                                                                                                                                                                                                                                                                                                                                                
  Monitoria (Auxilia outros estudantes ao longo do seu aprendizado) Empreendedorismo Atividades em laboratorio (Experimentos Pesquisas Testes Exames dentre outras) Associacao Atletica E-sports (Modalidade de esportes eletronicos) Nucleo Estudantil (Oferece suporte aos estudantes ao longo do curso)                                                                                                                                                                                                                                              
 Diretorio Academico - DA (Representa os estudantes de um determinado curso)                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
 Atividades em laboratorio (Experimentos Pesquisas Testes Exames dentre outras)                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
 Monitoria (Auxilia outros estudantes ao longo do seu aprendizado) Empreendedorismo Atividades em laboratorio (Experimentos Pesquisas Testes Exames dentre outras) Associacao Atletica E-sports (Modalidade de esportes eletronicos) Nucleo Estudantil (Oferece suporte aos estudantes ao longo do curso) Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)                                                                                                                                                                       
Empreendedorismo E-sports (Modalidade de esportes eletronicos) Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)                                                                                                                                                                                                                                                                                                                                                                                                                 
 Atividades em laboratorio (Experimentos Pesquisas Testes Exames dentre outras) Associacao Atletica E-sports (Modalidade de esportes eletronicos)                                                                                                                                                                                                                                                                                                                                                                                                      
 Empreendedorismo                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
 Empreendedorismo Atividades em laboratorio (Experimentos Pesquisas Testes Exames dentre outras)                                                                                                                                                                                                                                                                                                                                                                                                                                                       
 Monitoria (Auxilia outros estudantes ao longo do seu aprendizado) Atividades em laboratorio (Experimentos Pesquisas Testes Exames dentre outras) Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)                                                                                                                                                                                                                                                                                                                               
 Empreendedorismo Atividades em laboratorio (Experimentos Pesquisas Testes Exames dentre outras) E-sports (Modalidade de esportes eletronicos)                                                                                                                                                                                                                                                                                                                                                                                                         
 Monitoria (Auxilia outros estudantes ao longo do seu aprendizado)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
 Monitoria (Auxilia outros estudantes ao longo do seu aprendizado) Atividades em laboratorio (Experimentos Pesquisas Testes Exames dentre outras) Diretorio Academico - DA (Representa os estudantes de um determinado curso) Diretorio Central de Estudantes - DCE (Representa todos os estudantes de uma universidade) Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)                                                                                                                                                        
 Monitoria (Auxilia outros estudantes ao longo do seu aprendizado) Empreendedorismo Atividades em laboratorio (Experimentos Pesquisas Testes Exames dentre outras) Diretorio Academico - DA (Representa os estudantes de um determinado curso) Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)                                                                                                                                                                                                                                  
 Empreendedorismo Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          Atividades em laboratorio (Experimentos Pesquisas Testes Exames dentre outras) Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)                                                                                                                                                                                                                                                                                                                                                                                                 
Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
Monitoria (Auxilia outros estudantes ao longo do seu aprendizado) Associacao Atletica E-sports (Modalidade de esportes eletronicos) Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)                                                                                                                                                                                                                                                                                                                                            
 Empreendedorismo Atividades em laboratorio (Experimentos Pesquisas Testes Exames dentre outras) Nucleo Estudantil (Oferece suporte aos estudantes ao longo do curso) Diretorio Academico - DA (Representa os estudantes de um determinado curso) Diretorio Central de Estudantes - DCE (Representa todos os estudantes de uma universidade) Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)                                                                                                                                    
Empreendedorismo Associacao Atletica E-sports (Modalidade de esportes eletronicos)                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
Empreendedorismo Associacao Atletica                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
Monitoria (Auxilia outros estudantes ao longo do seu aprendizado) Empreendedorismo Atividades em laboratorio (Experimentos Pesquisas Testes Exames dentre outras) E-sports (Modalidade de esportes eletronicos) Nucleo Estudantil (Oferece suporte aos estudantes ao longo do curso) Diretorio Academico - DA (Representa os estudantes de um determinado curso) Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)                                                                                                               
 Monitoria (Auxilia outros estudantes ao longo do seu aprendizado) Atividades em laboratorio (Experimentos Pesquisas Testes Exames dentre outras) Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)                                                                                                                                                                                                                                                                                                                               
 Empreendedorismo Atividades em laboratorio (Experimentos Pesquisas Testes Exames dentre outras) E-sports (Modalidade de esportes eletronicos)                                                                                                                                                                                                                                                                                                                                                                                                         
Empreendedorismo Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)                                                                                                                                                                                                                                                                                                                                                                                                                                                               
 Monitoria (Auxilia outros estudantes ao longo do seu aprendizado) Empreendedorismo Atividades em laboratorio (Experimentos Pesquisas Testes Exames dentre outras) Associacao Atletica E-sports (Modalidade de esportes eletronicos) Nucleo Estudantil (Oferece suporte aos estudantes ao longo do curso) Diretorio Academico - DA (Representa os estudantes de um determinado curso) Diretorio Central de Estudantes - DCE (Representa todos os estudantes de uma universidade) Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)
 Atividades em laboratorio (Experimentos Pesquisas Testes Exames dentre outras) Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
 Atividades em laboratorio (Experimentos Pesquisas Testes Exames dentre outras)                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
 Atividades em laboratorio (Experimentos Pesquisas Testes Exames dentre outras) Diretorio Academico - DA (Representa os estudantes de um determinado curso) Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)                                                                                                                                                                                                                                                                                                                     
 Monitoria (Auxilia outros estudantes ao longo do seu aprendizado) Empreendedorismo Atividades em laboratorio (Experimentos Pesquisas Testes Exames dentre outras) E-sports (Modalidade de esportes eletronicos) Nucleo Estudantil (Oferece suporte aos estudantes ao longo do curso) Diretorio Academico - DA (Representa os estudantes de um determinado curso) Diretorio Central de Estudantes - DCE (Representa todos os estudantes de uma universidade) Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)                    
 Monitoria (Auxilia outros estudantes ao longo do seu aprendizado) Empreendedorismo Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)                                                                                                                                                                                                                                                                                                                                                                                             
 Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
 Empreendedorismo Atividades em laboratorio (Experimentos Pesquisas Testes Exames dentre outras) Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)                                                                                                                                                                                                                                                                                                                                                                                
 Monitoria (Auxilia outros estudantes ao longo do seu aprendizado) Empreendedorismo Atividades em laboratorio (Experimentos Pesquisas Testes Exames dentre outras) Associacao Atletica E-sports (Modalidade de esportes eletronicos) Nucleo Estudantil (Oferece suporte aos estudantes ao longo do curso) Diretorio Academico - DA (Representa os estudantes de um determinado curso) Diretorio Central de Estudantes - DCE (Representa todos os estudantes de uma universidade) Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)
Empreendedorismo Atividades em laboratorio (Experimentos Pesquisas Testes Exames dentre outras) Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)                                                                                                                                                                                                                                                                                                                                                                                
 Atividades em laboratorio (Experimentos, Pesquisas, Testes, Exames, dentre outras), Iniciacao Cientifica (Participar de um projeto de pesquisa cientifica)                                                                                                                                                                                                                                                                                                                                                                                            
 Empreendedorismo, Atividades em laboratorio (Experimentos, Pesquisas, Testes, Exames, dentre outras), Diretorio Academico - DA (Representa os estudantes de um determinado curso)                                                                                                                                                                                                                                                                                                                                                                     
 Atividades em laboratorio (Experimentos, Pesquisas, Testes, Exames, dentre outras), Associac'o Atletica"      
texto_ativ <- limpeza(texto_ativ)
conta_atv <- freq_terms(texto_ativ)
plot(conta_atv)

wordcloud(texto_ativ,
          min.freq = 1,
          max.words=200,
          random.order=FALSE,
          rot.per=0.35,
          colors=brewer.pal(8, "Dark2"))


#texto busca instituicao#
texto_busca <- "Assistindo videos no Youtube Conversando com amigos Fazendo uma busca no Google Acessando o site da propria instituicao Vendo a avaliacao da instituicao no site do MEC                                                                                                                                      
Fazendo uma busca no Google Buscando nas redes sociais Lendo avaliacoes em sites e blogs Vendo a avaliacao da instituicao no site do MEC                                                                                                                                                                     
Fazendo uma busca no Google Buscando nas redes sociais Lendo avaliacoes em sites e blogs Acessando o site da propria instituicao Vendo a avaliacao da instituicao no site do MEC                                                                                                                             
Fazendo uma busca no Google Buscando nas redes sociais Vendo a avaliacao da instituicao no site do MEC                                                                                                                                                                                                       
Lendo avaliacoes em sites e blogs Acessando o site da propria instituicao Vendo a avaliacao da instituicao no site do MEC                                                                                                                                                                                    
Fazendo uma busca no Google Acessando o site da propria instituicao Vendo a avaliacao da instituicao no site do MEC                                                                                                                                                                                          
Assistindo videos no Youtube Fazendo uma busca no Google Acessando o site da propria instituicao Vendo a avaliacao da instituicao no site do MEC                                                                                                                                                             
Conversando com amigos                                                                                                                                                                                                                                                                                       
Vendo a avaliacao da instituicao no site do MEC                                                                                                                                                                                                                                                              
Conversando com amigos Fazendo uma busca no Google Buscando nas redes sociais Acessando o site da propria instituicao Vendo a avaliacao da instituicao no site do MEC                                                                                                                                        
 Assistindo videos no Youtube Conversando com meus pais Conversando com amigos Conversando com parentes Fazendo uma busca no Google Buscando nas redes sociais Lendo avaliacoes em sites e blogs Acessando o site da propria instituicao Vendo a avaliacao da instituicao no site do MEC                      
Buscando nas redes sociais Acessando o site da propria instituicao                                                                                                                                                                                                                                           
 Conversando com amigos Lendo avaliacoes em sites e blogs Acessando o site da propria instituicao                                                                                                                                                                                                             
Fazendo uma busca no Google Lendo avaliacoes em sites e blogs Acessando o site da propria instituicao                                                                                                                                                                                                        
Conversando com amigos Fazendo uma busca no Google Buscando nas redes sociais Acessando o site da propria instituicao                                                                                                                                                                                        
 Lendo avaliacoes em sites e blogs Vendo a avaliacao da instituicao no site do MEC                                                                                                                                                                                                                            
 Assistindo videos no Youtube Fazendo uma busca no Google Buscando nas redes sociais                                                                                                                                                                                                                          
Assistindo videos no Youtube Conversando com amigos Fazendo uma busca no Google Buscando nas redes sociais Lendo avaliacoes em sites e blogs Acessando o site da propria instituicao                                                                                                                         
 Vendo a avaliacao da instituicao no site do MEC                                                                                                                                                                                                                                                              
Fazendo uma busca no Google Buscando nas redes sociais Acessando o site da propria instituicao Vendo a avaliacao da instituicao no site do MEC                                                                                                                                                               
Assistindo videos no Youtube Conversando com meus pais Conversando com amigos Fazendo uma busca no Google Lendo avaliacoes em sites e blogs Acessando o site da propria instituicao                                                                                                                          
Conversando com amigos Acessando o site da propria instituicao Vendo a avaliacao da instituicao no site do MEC                                                                                                                                                                                               
Conversando com meus pais Conversando com amigos Conversando com parentes Fazendo uma busca no Google Lendo avaliacoes em sites e blogs Acessando o site da propria instituicao                                                                                                                              
 Fazendo uma busca no Google                                                                                                                                                                                                                                                                                  
Conversando com meus pais Conversando com amigos Fazendo uma busca no Google Buscando nas redes sociais Acessando o site da propria instituicao Vendo a avaliacao da instituicao no site do MEC Minha rerefencia na epoca veio de um Tecnico em Eletronica de minha cidade para fazer o Inatel e assim o fiz.
Assistindo videos no Youtube Conversando com amigos                                                                                                                                                                                                                                                          
Conversando com meus pais Acessando o site da propria instituicao Vendo a avaliacao da instituicao no site do MEC                                                                                                                                                                                            
Conversando com amigos Fazendo uma busca no Google Acessando o site da propria instituicao Vendo a avaliacao da instituicao no site do MEC                                                                                                                                                                   
 Conversando com amigos Fazendo uma busca no Google Acessando o site da propria instituicao Vendo a avaliacao da instituicao no site do MEC                                                                                                                                                                   
 Assistindo videos no Youtube Conversando com meus pais Conversando com amigos Fazendo uma busca no Google Buscando nas redes sociais Lendo avaliacoes em sites e blogs Acessando o site da propria instituicao Vendo a avaliacao da instituicao no site do MEC                                               
 Assistindo videos no Youtube Fazendo uma busca no Google Lendo avaliacoes em sites e blogs Acessando o site da propria instituicao Vendo a avaliacao da instituicao no site do MEC                                                                                                                           
Assistindo videos no Youtube Fazendo uma busca no Google Acessando o site da propria instituicao                                                                                                                                                                                                             
 Fazendo uma busca no Google Buscando nas redes sociais Lendo avaliacoes em sites e blogs Acessando o site da propria instituicao Vendo a avaliacao da instituicao no site do MEC                                                                                                                             
Fazendo uma busca no Google Buscando nas redes sociais Lendo avaliacoes em sites e blogs Acessando o site da propria instituicao Vendo a avaliacao da instituicao no site do MEC                                                                                                                             
Assistindo videos no Youtube Fazendo uma busca no Google Buscando nas redes sociais Acessando o site da propria instituicao Vendo a avaliacao da instituicao no site do MEC                                                                                                                                  
Assistindo videos no Youtube Fazendo uma busca no Google Lendo avaliacoes em sites e blogs Acessando o site da propria instituicao Vendo a avaliacao da instituicao no site do MEC                                                                                                                           
Assistindo videos no Youtube Conversando com amigos Fazendo uma busca no Google Buscando nas redes sociais Acessando o site da propria instituicao                                                                                                                                                           
Conversando com amigos Fazendo uma busca no Google Acessando o site da propria instituicao Vendo a avaliacao da instituicao no site do MEC                                                                                                                                                                   
Fazendo uma busca no Google Buscando nas redes sociais Lendo avaliacoes em sites e blogs Vendo a avaliacao da instituicao no site do MEC                                                                                                                                                                     
Conversando com amigos Acessando o site da propria instituicao Vendo a avaliacao da instituicao no site do MEC                                                                                                                                                                                               
Assistindo videos no Youtube Fazendo uma busca no Google Buscando nas redes sociais Lendo avaliacoes em sites e blogs Acessando o site da propria instituicao                                                                                                                                                
Conversando com amigos Fazendo uma busca no Google                                                                                                                                                                                                                                                           
Conversando com meus pais Conversando com amigos Acessando o site da propria instituicao Vendo a avaliacao da instituicao no site do MEC                                                                                                                                                                     
Conversando com amigos Fazendo uma busca no Google Lendo avaliacoes em sites e blogs Acessando o site da propria instituicao Vendo a avaliacao da instituicao no site do MEC                                                                                                                                 
Assistindo videos no Youtube                                                                                                                                                                                                                                                                                 
 Conversando com amigos Fazendo uma busca no Google Acessando o site da propria instituicao Vendo a avaliacao da instituicao no site do MEC                                                                                                                                                                   
 Conversando com meus pais Conversando com amigos Fazendo uma busca no Google Vendo a avaliacao da instituicao no site do MEC                                                                                                                                                                                 
Assistindo videos no Youtube Conversando com meus pais Conversando com amigos Conversando com parentes Fazendo uma busca no Google Buscando nas redes sociais Lendo avaliacoes em sites e blogs Acessando o site da propria instituicao Vendo a avaliacao da instituicao no site do MEC                      
Fazendo uma busca no Google Buscando nas redes sociais Lendo avaliacoes em sites e blogs Acessando o site da propria instituicao Vendo a avaliacao da instituicao no site do MEC                                                                                                                             
Assistindo videos no Youtube Conversando com amigos Fazendo uma busca no Google Acessando o site da propria instituicao Vendo a avaliacao da instituicao no site do MEC                                                                                                                                      
Assistindo videos no Youtube Conversando com amigos Fazendo uma busca no Google Lendo avaliacoes em sites e blogs Vendo a avaliacao da instituicao no site do MEC                                                                                                                                            
Conversando com amigos Fazendo uma busca no Google Lendo avaliacoes em sites e blogs Vendo a avaliacao da instituicao no site do MEC                                                                                                                                                                         
Assistindo videos no Youtube Conversando com meus pais Conversando com amigos Conversando com parentes Fazendo uma busca no Google Lendo avaliacoes em sites e blogs Acessando o site da propria instituicao Vendo a avaliacao da instituicao no site do MEC                                                 
 Conversando com amigos Acessando o site da propria instituicao Vendo a avaliacao da instituicao no site do MEC                                                                                                                                                                                               
Conversando com amigos Acessando o site da propria instituicao Vendo a avaliacao da instituicao no site do MEC                                                                                                                                                                                               
 Assistindo videos no Youtube Conversando com amigos Fazendo uma busca no Google Buscando nas redes sociais Lendo avaliacoes em sites e blogs Acessando o site da propria instituicao                                                                                                                         
Assistindo videos no Youtube                                                                                                                                                                                                                                                                                 
 Conversando com amigos Fazendo uma busca no Google Buscando nas redes sociais Lendo avaliacoes em sites e blogs Vendo a avaliacao da instituicao no site do MEC                                                                                                                                              
  Assistindo videos no Youtube Fazendo uma busca no Google Acessando o site da propria instituicao Vendo a avaliacao da instituicao no site do MEC                                                                                                                                                             
Fazendo uma busca no Google                                                                                                                                                                                                                                                                                  
 Conversando com amigos Fazendo uma busca no Google Buscando nas redes sociais                                                                                                                                                                                                                                
 Assistindo videos no Youtube Conversando com parentes Fazendo uma busca no Google Lendo avaliacoes em sites e blogs                                                                                                                                                                                          
Conversando com amigos Acessando o site da propria instituicao Vendo a avaliacao da instituicao no site do MEC                                                                                                                                                                                               
Assistindo videos no Youtube Conversando com meus pais Conversando com amigos Conversando com parentes Fazendo uma busca no Google Buscando nas redes sociais Acessando o site da propria instituicao                                                                                                        
Lendo avaliacoes em sites e blogs Acessando o site da propria instituicao Vendo a avaliacao da instituicao no site do MEC                                                                                                                                                                                    
Assistindo videos no Youtube Conversando com meus pais Conversando com amigos Fazendo uma busca no Google Acessando o site da propria instituicao Vendo a avaliacao da instituicao no site do MEC                                                                                                            
Assistindo videos no Youtube Conversando com amigos Fazendo uma busca no Google Acessando o site da propria instituicao                                                                                                                                                                                      
Fazendo uma busca no Google Acessando o site da propria instituicao                                                                                                                                                                                                                                          
 Assistindo videos no Youtube Conversando com amigos Fazendo uma busca no Google Vendo a avaliacao da instituicao no site do MEC                                                                                                                                                                              
Fazendo uma busca no Google Lendo avaliacoes em sites e blogs Acessando o site da propria instituicao Vendo a avaliacao da instituicao no site do MEC                                                                                                                                                        
Fazendo uma busca no Google Buscando nas redes sociais Lendo avaliacoes em sites e blogs Acessando o site da propria instituicao Vendo a avaliacao da instituicao no site do MEC                                                                                                                             
Conversando com amigos Fazendo uma busca no Google Buscando nas redes sociais Acessando o site da propria instituicao Vendo a avaliacao da instituicao no site do MEC                                                                                                                                        
Assistindo videos no Youtube Conversando com meus pais Conversando com amigos Conversando com parentes Fazendo uma busca no Google Lendo avaliacoes em sites e blogs Acessando o site da propria instituicao                                                                                                 
 Assistindo videos no Youtube Conversando com meus pais Conversando com amigos Conversando com parentes Fazendo uma busca no Google Lendo avaliacoes em sites e blogs Acessando o site da propria instituicao                                                                                                 
Assistindo videos no Youtube Fazendo uma busca no Google Acessando o site da propria instituicao                                                                                                                                                                                                             
Fazendo uma busca no Google Lendo avaliacoes em sites e blogs Acessando o site da propria instituicao Vendo a avaliacao da instituicao no site do MEC                                                                                                                                                        
Assistindo videos no Youtube Conversando com meus pais Conversando com amigos Fazendo uma busca no Google Buscando nas redes sociais Lendo avaliacoes em sites e blogs Acessando o site da propria instituicao Vendo a avaliacao da instituicao no site do MEC                                               
Assistindo videos no Youtube Conversando com amigos Conversando com parentes Fazendo uma busca no Google Acessando o site da propria instituicao                                                                                                                                                             
Lendo avaliacoes em sites e blogs Acessando o site da propria instituicao Vendo a avaliacao da instituicao no site do MEC                                                                                                                                                                                    
 Conversando com amigos Fazendo uma busca no Google Acessando o site da propria instituicao Vendo a avaliacao da instituicao no site do MEC                                                                                                                                                                   
 Assistindo videos no Youtube Conversando com amigos Fazendo uma busca no Google Lendo avaliacoes em sites e blogs Acessando o site da propria instituicao Vendo a avaliacao da instituicao no site do MEC                                                                                                                                                                                                                                                                                                                                                                                                              
Fazendo uma busca no Google                                                                                                                                                                                                                                                                                  
Conversando com amigos Fazendo uma busca no Google Vendo a avaliacao da instituicao no site do MEC                                                                                                                                                                                                           
Lendo avaliacoes em sites e blogs Acessando o site da propria instituicao Vendo a avaliacao da instituicao no site do MEC                                                                                                                                                                                    
Fazendo uma busca no Google                                                                                                                                                                                                                                                                                  
Acessando o site da propria instituicao Vendo a avaliacao da instituicao no site do MEC                                                                                                                                                                                                                      
Assistindo videos no Youtube Fazendo uma busca no Google Lendo avaliacoes em sites e blogs Vendo a avaliacao da instituicao no site do MEC                                                                                                                                                                   
Conversando com meus pais Conversando com amigos Conversando com parentes Acessando o site da propria instituicao                                                                                                                                                                                            
Acessando o site da propria instituicao                                                                                                                                                                                                                                                                      
Assistindo videos no Youtube Fazendo uma busca no Google Lendo avaliacoes em sites e blogs Acessando o site da propria instituicao                                                                                                                                                                           
Conversando com amigos                                                                                                                                                                                                                                                                                       
Conversando com amigos Fazendo uma busca no Google Lendo avaliacoes em sites e blogs Vendo a avaliacao da instituicao no site do MEC                                                                                                                                                                         
Assistindo videos no Youtube Fazendo uma busca no Google Buscando nas redes sociais Acessando o site da propria instituicao                                                                                                                                                                                  
Conversando com amigos Fazendo uma busca no Google Buscando nas redes sociais Acessando o site da propria instituicao Vendo a avaliacao da instituicao no site do MEC                                                                                                                                        
 Fazendo uma busca no Google Buscando nas redes sociais Lendo avaliacoes em sites e blogs Vendo a avaliacao da instituicao no site do MEC                                                                                                                                                                     
Assistindo videos no Youtube Fazendo uma busca no Google Acessando o site da propria instituicao Vendo a avaliacao da instituicao no site do MEC                                                                   
 Assistindo videos no Youtube Conversando com meus pais Conversando com amigos Conversando com parentes Fazendo uma busca no Google Buscando nas redes sociais Lendo avaliacoes em sites e blogs Acessando o site da propria instituicao                                                                                                                                                                                                                                                                                                                                                                                   
 Fazendo uma busca no Google Acessando o site da propria instituicao Vendo a avaliacao da instituicao no site do MEC                                                                                                                                                                                          
 Assistindo videos no Youtube Fazendo uma busca no Google Buscando nas redes sociais Lendo avaliacoes em sites e blogs Acessando o site da propria instituicao Vendo a avaliacao da instituicao no site do MEC                                                                                                
 Assistindo videos no Youtube Conversando com meus pais Conversando com amigos Conversando com parentes Fazendo uma busca no Google Acessando o site da propria instituicao Vendo a avaliacao da instituicao no site do MEC                                                                                   
Assistindo videos no Youtube Fazendo uma busca no Google Buscando nas redes sociais Acessando o site da propria instituicao                                                                                                                                                                                  
 Assistindo videos no Youtube Fazendo uma busca no Google                                                                                                                                                                                                                                                     
Fazendo uma busca no Google Acessando o site da propria instituicao Vendo a avaliacao da instituicao no site do MEC                                                                                                                                                                                          
 Conversando com amigos Fazendo uma busca no Google Acessando o site da propria instituicao                                                                                                                                                                                                                   
 Assistindo videos no Youtube Conversando com amigos Fazendo uma busca no Google Buscando nas redes sociais Acessando o site da propria instituicao                                                                                                                                                           
 Conversando com amigos Fazendo uma busca no Google Buscando nas redes sociais Acessando o site da propria instituicao Vendo a avaliacao da instituicao no site do MEC                                                                                                                                        
 Fazendo uma busca no Google Acessando o site da propria instituicao Vendo a avaliacao da instituicao no site do MEC                                                                                                                                                                                          
 Fazendo uma busca no Google                                                                                                                                                                                                                                                                                  
 Conversando com meus pais Conversando com amigos Acessando o site da propria instituicao Vendo a avaliacao da instituicao no site do MEC                                                                                                                                                                     
 Lendo avaliacoes em sites e blogs Acessando o site da propria instituicao Vendo a avaliacao da instituicao no site do MEC                                                                                                                                                                                    
 Assistindo videos no Youtube Conversando com amigos Fazendo uma busca no Google Buscando nas redes sociais Lendo avaliacoes em sites e blogs Acessando o site da propria instituicao Vendo a avaliacao da instituicao no site do MEC                                                                         
 Assistindo videos no Youtube                                                                                                                                                                                                                                                                                 
 Assistindo videos no Youtube Conversando com amigos Conversando com parentes Fazendo uma busca no Google Buscando nas redes sociais Lendo avaliacoes em sites e blogs Acessando o site da propria instituicao Vendo a avaliacao da instituicao no site do MEC                                                
 Assistindo videos no Youtube Fazendo uma busca no Google Lendo avaliacoes em sites e blogs Acessando o site da propria instituicao Vendo a avaliacao da instituicao no site do MEC                                                                                                                           
 Assistindo videos no Youtube Conversando com amigos                                                                                                                                                                                                                                                          
 Fazendo uma busca no Google Buscando nas redes sociais Lendo avaliacoes em sites e blogs Acessando o site da propria instituicao                                                                                                                                                                             
 Assistindo videos no Youtube Conversando com amigos Conversando com parentes Fazendo uma busca no Google Buscando nas redes sociais Lendo avaliacoes em sites e blogs Acessando o site da propria instituicao Vendo a avaliacao da instituicao no site do MEC                                                
 Conversando com meus pais Conversando com amigos Conversando com parentes Fazendo uma busca no Google Buscando nas redes sociais Lendo avaliacoes em sites e blogs Acessando o site da propria instituicao Vendo a avaliacao da instituicao no site do MEC                                                   
 Fazendo uma busca no Google                                                                                                                                                                                                                                                                                  
 Vendo a avaliacao da instituicao no site do MEC                                                                                                                                                                                                                                                              
 Assistindo videos no Youtube Conversando com amigos Conversando com parentes Fazendo uma busca no Google Buscando nas redes sociais Lendo avaliacoes em sites e blogs Acessando o site da propria instituicao                                                                                                
 Fazendo uma busca no Google Buscando nas redes sociais Acessando o site da propria instituicao                                                                                                                                                                                                               
Fazendo uma busca no Google                                                                                                                                                                                                                                                                                  
Conversando com amigos Fazendo uma busca no Google Acessando o site da propria instituicao Vendo a avaliacao da instituicao no site do MEC                                                                                                                                                                   
Conversando com amigos Lendo avaliacoes em sites e blogs Vendo a avaliacao da instituicao no site do MEC                                                                                                                                                                                                     
Conversando com amigos Lendo avaliacoes em sites e blogs Acessando o site da propria instituicao                                                                                                                                                                                                             
 Fazendo uma busca no Google Buscando nas redes sociais Lendo avaliacoes em sites e blogs Acessando o site da propria instituicao Vendo a avaliacao da instituicao no site do MEC                                                                                                                             
Assistindo videos no Youtube Conversando com parentes Acessando o site da propria instituicao                                                                                                                                                                                                                
 Conversando com amigos Fazendo uma busca no Google Buscando nas redes sociais Lendo avaliacoes em sites e blogs Acessando o site da propria instituicao                                                                                                                                                      
 Assistindo videos no Youtube Conversando com amigos Conversando com parentes Fazendo uma busca no Google Buscando nas redes sociais Lendo avaliacoes em sites e blogs Acessando o site da propria instituicao                                                                                                
 Assistindo videos no Youtube Fazendo uma busca no Google Buscando nas redes sociais Lendo avaliacoes em sites e blogs Acessando o site da propria instituicao                                                                                                                                                
 Assistindo videos no Youtube, Conversando com meus pais, Conversando com amigos, Fazendo uma busca no Google, Acessando o site da propria instituicao                                                                                                                                                        
 Fazendo uma busca no Google, Buscando nas redes sociais                                                                                                                                                                                                                                                      
 Conversando com meus pais, Conversando com parentes" 
texto_busca <- limpeza(texto_busca) 
conta_busca <- freq_terms(texto_busca)
plot(conta_busca)

wordcloud(texto_busca,
          min.freq = 1,
          max.words=200,
          random.order=FALSE,
          rot.per=0.35,
          colors=brewer.pal(8, "Dark2"))


#texto busca redes sociais#
texto_rdSocias <-  " [1] Facebook Messenger (Facebook) Youtube Whatsapp Linkedin                  
  [2] Facebook Youtube Whatsapp Linkedin                                       
  [3] Facebook Messenger (Facebook) Instagram Youtube Whatsapp Linkedin        
  [4] Youtube Whatsapp Linkedin                                                
  [5] Instagram Whatsapp Linkedin                                              
  [6] Instagram Whatsapp Linkedin                                              
  [7] Whatsapp                                                                 
  [8] Facebook Messenger (Facebook) Instagram Youtube Whatsapp                 
  [9] Facebook Youtube Whatsapp Linkedin                                       
 [10] Facebook Instagram Youtube Whatsapp                                      
 [11] Facebook Messenger (Facebook) Instagram Youtube Whatsapp Twitter         
 [12] Facebook Messenger (Facebook) Whatsapp                                   
 [13] Instagram                                                                
 [14] Facebook Instagram Youtube Whatsapp Linkedin                             
 [15] Facebook Instagram Whatsapp                                              
 [16] Youtube Whatsapp Linkedin                                                
 [17] Facebook Youtube Whatsapp                                                
 [18] Facebook Instagram Youtube Whatsapp                                      
 [19] Facebook Instagram Whatsapp Twitter                                      
 [20] Facebook Youtube Whatsapp                                                
 [21] Facebook Whatsapp                                                        
 [22] Facebook Messenger (Facebook) Youtube Whatsapp Linkedin                  
 [23] Youtube Whatsapp Linkedin                                                
 [24] Youtube Whatsapp                                                         
 [25] Facebook Messenger (Facebook) Instagram Youtube Whatsapp Linkedin        
 [26] Instagram Whatsapp Linkedin                                              
 [27] Facebook Messenger (Facebook) Instagram Youtube Whatsapp Linkedin        
 [28] Whatsapp Linkedin                                                        
 [29] Whatsapp Linkedin                                                        
 [30] Facebook Instagram Youtube Whatsapp                                      
 [31] Instagram Whatsapp                                                       
 [32] Facebook Messenger (Facebook) Instagram Youtube Whatsapp                 
 [33] Youtube Whatsapp                                                         
 [34] Facebook Messenger (Facebook) Instagram Youtube Whatsapp Linkedin        
 [35] Facebook Youtube Whatsapp                                                
 [36] Facebook Instagram Youtube Whatsapp                                      
 [37] Facebook Instagram Youtube Whatsapp                                      
 [38] Instagram Whatsapp                                                       
 [39] Facebook Instagram Whatsapp                                              
 [40] Facebook Messenger (Facebook) Youtube Whatsapp                           
 [41] Instagram Youtube Whatsapp                                               
 [42] Facebook Instagram Youtube Whatsapp Linkedin                             
 [43] Facebook Instagram Youtube Whatsapp                                      
 [44] Facebook Youtube Whatsapp Linkedin                                       
 [45] Facebook                                                                 
 [46] Linkedin                                                                 
 [47] Youtube Whatsapp Linkedin                                                
 [48] Instagram Youtube Whatsapp                                               
 [49] Instagram Youtube Whatsapp                                               
 [50] Whatsapp                                                                 
 [51] Facebook Instagram Youtube Whatsapp                                      
 [52] Facebook Messenger (Facebook) Instagram Whatsapp                         
 [53] Instagram Youtube Whatsapp TED                                           
 [54] Facebook Messenger (Facebook) Instagram Youtube Whatsapp Linkedin        
 [55] Facebook Youtube Whatsapp                                                
 [56] Instagram Whatsapp Linkedin                                              
 [57] Facebook                                                                 
 [58] Facebook Instagram Youtube Whatsapp                                      
 [59] Whatsapp                                                                 
 [60] Youtube                                                                  
 [61] Facebook Instagram Youtube Whatsapp                                      
 [62] Facebook Instagram Whatsapp                                              
 [63] Facebook Instagram Whatsapp Linkedin                                     
 [64] Facebook Messenger (Facebook) Youtube Whatsapp Gugo                      
 [65] Facebook Messenger (Facebook) Instagram Youtube Whatsapp Twitter Linkedin
 [66] Facebook Messenger (Facebook) Instagram Youtube Whatsapp                 
 [67] Facebook Messenger (Facebook) Instagram Youtube Whatsapp Twitter Linkedin
 [68] Whatsapp                                                                 
 [69] Facebook Instagram Youtube Whatsapp                                      
 [70] Facebook                                                                 
 [71] Facebook Instagram Youtube Whatsapp Linkedin                             
 [72] Facebook Youtube Whatsapp Twitter Linkedin                               
 [73] Facebook Messenger (Facebook) Instagram Youtube Whatsapp Twitter         
 [74] Facebook Messenger (Facebook) Instagram Youtube Whatsapp Twitter         
 [75] Facebook Youtube Whatsapp Twitter                                        
 [76] Facebook Whatsapp                                                        
 [77] Youtube Whatsapp                                                         
 [78] Facebook Youtube Whatsapp                                                
 [79] Whatsapp                                                                 
 [80] Whatsapp                                                                 
 [81] Facebook Instagram Whatsapp Linkedin                                     
 [82] Instagram Linkedin                                                       
 [83] Instagram Whatsapp                                                       
 [84] Facebook Messenger (Facebook) Instagram Youtube Whatsapp                 
 [85] Facebook Messenger (Facebook) Instagram Youtube Whatsapp Twitter Linkedin
 [86] Youtube Whatsapp                                                         
 [87] Youtube Whatsapp Linkedin                                                
 [88] Facebook Youtube Whatsapp                                                
 [89] Facebook Messenger (Facebook) Instagram Youtube Whatsapp Linkedin        
 [90] Facebook Messenger (Facebook) Youtube Whatsapp                           
 [91] Instagram Whatsapp Twitter                                               
 [92] Facebook Messenger (Facebook) Instagram Youtube Whatsapp                 
 [93] Facebook Whatsapp Linkedin                                               
 [94] Facebook Youtube Whatsapp                                                
 [95] Whatsapp Linkedin                                                        
 [96] Facebook Instagram Youtube Whatsapp                                      
 [97] Facebook Instagram Youtube Whatsapp                                      
 [98] Facebook Instagram Youtube                                               
 [99] Facebook Instagram Whatsapp Linkedin                                     
[100] Facebook Instagram Whatsapp                                              
[101] Instagram Youtube                                                        
[102] Facebook Instagram Youtube Whatsapp                                      
[103] Instagram Youtube Whatsapp                                               
[104] Facebook Messenger (Facebook) Instagram Youtube Whatsapp Linkedin        
[105] Instagram Youtube Whatsapp Linkedin                                      
[106] Youtube Whatsapp Linkedin                                                
[107] Facebook Instagram Youtube Whatsapp                                      
[108] Facebook Instagram Whatsapp                                              
[109] Facebook Messenger (Facebook) Youtube Whatsapp Linkedin                  
[110] Facebook Messenger (Facebook) Instagram Youtube Whatsapp Linkedin        
[111] Facebook Messenger (Facebook) Instagram Youtube Whatsapp Linkedin        
[112] Facebook Messenger (Facebook) Instagram Whatsapp                         
[113] Youtube Whatsapp                                                         
[114] Facebook                                                                 
[115] Facebook Instagram Youtube Whatsapp Linkedin                             
[116] Instagram Whatsapp                                                       
[117] Instagram Whatsapp Twitter                                               
[118] Facebook                                                                 
[119] Facebook Instagram Youtube Whatsapp                                      
[120] Facebook Instagram Youtube Whatsapp                                      
[121] Youtube Whatsapp                                                         
[122] Linkedin                                                                 
[123] Whatsapp                                                                 
[124] Facebook Instagram Whatsapp                                              
[125] Youtube Whatsapp                                                         
[126] Whatsapp Linkedin                                                        
[127] Instagram Whatsapp                                                       
[128] Facebook Instagram Youtube Whatsapp                                      
[129] Facebook Messenger (Facebook) Whatsapp                                   
[130] Whatsapp                                                                 
[131] Facebook Messenger (Facebook) Instagram Whatsapp                         
[132] Whatsapp                                                                 
[133] Facebook Instagram Youtube Whatsapp Twitter Linkedin Telegram            
[134] Youtube, Whatsapp                                                        
[135] Facebook, Instagram, Whatsapp                                            
[136] Facebook, Instagram, Whatsapp" 
texto_rdSocias <- limpeza(texto_rdSocias)
conta_rdSociais <- freq_terms(texto_rdSocias)
plot(conta_rdSociais)
wordcloud(texto_rdSocias,
          min.freq = 1,
          max.words=200,
          random.order=FALSE,
          rot.per=0.35,
          colors=brewer.pal(8, "Dark2"))

#texto qual curso#
texto_curso <-  " [1]                                                                                                                      
  [3]                                                                                                                      
  [5]                                                                                                                      
  [7]                                                            Engenharia Medicina                                       
  [9] Engenharia                                                 Outro curso de exatas                                     
 [11] Outro curso de exatas                                                                                                
 [13]                                                                                                                      
 [15] Medicina Direito                                                                                                     
 [17]                                                            Direito Outro curso de exatas                             
 [19] Medicina Outro curso de humanas                                                                                      
 [21]                                                                                                                      
 [23]                                                                                                                      
 [25]                                                                                                                      
 [27]                                                                                                                      
 [29]                                                            Engenharia Outro curso de exatas Outro curso de biologicas
 [31]                                                            Engenharia                                                
 [33]                                                            Outro curso de exatas                                     
 [35]                                                                                                                      
 [37]                                                            Engenharia                                                
 [39] Engenharia                                                                                                           
 [41] Outro curso de exatas                                      Engenharia                                                
 [43] Engenharia                                                                                                           
 [45] Engenharia                                                                                                           
 [47] Engenharia Outro curso de humanas                                                                                    
 [49]                                                            Engenharia Outro curso de exatas                          
 [51] Engenharia Medicina                                        Outro curso de exatas                                     
 [53] Engenharia                                                                                                           
 [55]                                                                                                                      
 [57] Medicina                                                   Engenharia                                                
 [59]                                                            Medicina                                                  
 [61]                                                                                                                      
 [63] Engenharia                                                 Medicina Direito                                          
 [65]                                                            Engenharia                                                
 [67]                                                                                                                      
 [69] Engenharia                                                 Outro curso de exatas                                     
 [71]                                                                                                                      
 [73]                                                                                                                      
 [75] Engenharia                                                 Engenharia Outro curso de exatas                          
 [77] Engenharia                                                                                                           
 [79] Engenharia                                                                                                           
 [81]                                                                                                                      
 [83]                                                                                                                      
 [85]                                                                                                                      
 [87]                                                                                                                      
 [89] Engenharia                                                 Engenharia                                                
 [91] Outro curso de humanas                                     Engenharia                                                
 [93]                                                            Engenharia                                                
 [95]                                                            Outro curso de exatas                                     
 [97]                                                            Engenharia                                                
 [99] Engenharia                                                 Engenharia Outro curso de humanas                         
[101]                                                                                                                      
[103] Engenharia Outro curso de exatas                           Engenharia Outro curso de exatas                          
[105]                                                                                                                      
[107]                                                            Engenharia                                                
[109]                                                                                                                      
[111]                                                                                                                      
[113]                                                                                                                      
[115]                                                            Engenharia                                                
[117] Engenharia Medicina Direito                                Engenharia                                                
[119] Engenharia Medicina Outro curso de biologicas                                                                        
[121]                                                                                                                      
[123] Outro curso de exatas                                      Engenharia                                                
[125] Engenharia                                                                                                           
[127]                                                            Engenharia                                                
[129]                                                                                                                      
[131] Engenharia                                                 Outro curso de exatas                                     
[133]                                                                                                                      
[135] Engenharia                                                 Engenharia "    

texto_curso <- limpeza(texto_curso)
conta_curso <- freq_terms(texto_curso)
wordcloud(texto_curso,
          min.freq = 1,
          max.words=200,
          random.order=FALSE,
          rot.per=0.35,
          colors=brewer.pal(8, "Dark2"))
plot(conta_curso)


#texto envolvimento pais#
texto_pais <-  " [1]                                                                                                                                                                                                                                                                                                                      
  [2]                                                                                                                                                                                                                                                                                                                      
  [3]                                                                                                                                                                                                                                                                                                                      
  [4]                                                                                                                                                                                                                                                                                                                      
  [5]                                                                                                                                                                                                                                                                                                                      
  [6]                                                                                                                                                                                                                                                                                                                      
  [7]                                                                                                                                                                                                                                                                                                                      
  [8] Estao constantemente me orientando quanto a cursos e instituicoes                                                                                                                                                                                                                                                    
  [9] Apoiam minha escolha de curso                                                                                                                                                                                                                                                                                        
 [10] Meus pais nao se envolvem                                                                                                                                                                                                                                                                                            
 [11] Estao constantemente me orientando quanto a cursos e instituicoes Contribuem na hora de pesquisar sobre cursos e instituicoes Apoiam minha escolha de curso                                                                                                                                                          
 [12]                                                                                                                                                                                                                                                                                                                      
 [13]                                                                                                                                                                                                                                                                                                                      
 [14]                                                                                                                                                                                                                                                                                                                      
 [15] Meus pais nao se envolvem                                                                                                                                                                                                                                                                                            
 [16]                                                                                                                                                                                                                                                                                                                      
 [17]                                                                                                                                                                                                                                                                                                                      
 [18] Estao constantemente me orientando quanto a cursos e instituicoes Eles me ajudam financeiramente nos estudos Eles me levariam ate uma instituicao para conhece-la independente da sua localizacao Querem decidir meu curso                                                                                           
 [19] Estao constantemente me orientando quanto a cursos e instituicoes Eles me ajudam financeiramente nos estudos                                                                                                                                                                                                         
 [20]                                                                                                                                                                                                                                                                                                                      
 [21]                                                                                                                                                                                                                                                                                                                      
 [22]                                                                                                                                                                                                                                                                                                                      
 [23]                                                                                                                                                                                                                                                                                                                      
 [24]                                                                                                                                                                                                                                                                                                                      
 [25]                                                                                                                                                                                                                                                                                                                      
 [26]                                                                                                                                                                                                                                                                                                                      
 [27]                                                                                                                                                                                                                                                                                                                      
 [28]                                                                                                                                                                                                                                                                                                                      
 [29]                                                                                                                                                                                                                                                                                                                      
 [30] Contribuem na hora de pesquisar sobre cursos e instituicoes Eles me ajudam financeiramente nos estudos Querem decidir meu curso                                                                                                                                                                                      
 [31]                                                                                                                                                                                                                                                                                                                      
 [32] Meus pais nao se envolvem                                                                                                                                                                                                                                                                                            
 [33]                                                                                                                                                                                                                                                                                                                      
 [34] Eles me ajudam financeiramente nos estudos Eles me levariam ate uma instituicao para conhece-la independente da sua localizacao Apoiam minha escolha de curso                                                                                                                                                        
 [35]                                                                                                                                                                                                                                                                                                                      
 [36]                                                                                                                                                                                                                                                                                                                      
 [37]                                                                                                                                                                                                                                                                                                                      
 [38] Apoiam minha escolha de curso                                                                                                                                                                                                                                                                                        
 [39] Estao constantemente me orientando quanto a cursos e instituicoes Contribuem na hora de pesquisar sobre cursos e instituicoes Eles me ajudam financeiramente nos estudos Eles me levariam ate uma instituicao para conhece-la independente da sua localizacao Apoiam minha escolha de curso                          
 [40]                                                                                                                                                                                                                                                                                                                      
 [41] Apoiam minha escolha de curso                                                                                                                                                                                                                                                                                        
 [42] Meus pais nao se envolvem                                                                                                                                                                                                                                                                                            
 [43] Estao constantemente me orientando quanto a cursos e instituicoes Eles me ajudam financeiramente nos estudos Eles me levariam ate uma instituicao para conhece-la independente da sua localizacao Apoiam minha escolha de curso                                                                                      
 [44]                                                                                                                                                                                                                                                                                                                      
 [45] Estao constantemente me orientando quanto a cursos e instituicoes                                                                                                                                                                                                                                                    
 [46]                                                                                                                                                                                                                                                                                                                      
 [47] Apoiam minha escolha de curso                                                                                                                                                                                                                                                                                        
 [48]                                                                                                                                                                                                                                                                                                                      
 [49]                                                                                                                                                                                                                                                                                                                      
 [50] Eles me levariam ate uma instituicao para conhece-la independente da sua localizacao Apoiam minha escolha de curso                                                                                                                                                                                                   
 [51] Estao constantemente me orientando quanto a cursos e instituicoes Eles me ajudam financeiramente nos estudos Apoiam minha escolha de curso                                                                                                                                                                           
 [52] Meus pais nao se envolvem                                                                                                                                                                                                                                                                                            
 [53] Contribuem na hora de pesquisar sobre cursos e instituicoes Eles me ajudam financeiramente nos estudos Eles me levariam ate uma instituicao para conhece-la independente da sua localizacao Apoiam minha escolha de curso                                                                                            
 [54]                                                                                                                                                                                                                                                                                                                      
 [55]                                                                                                                                                                                                                                                                                                                      
 [56]                                                                                                                                                                                                                                                                                                                      
 [57] Estao constantemente me orientando quanto a cursos e instituicoes                                                                                                                                                                                                                                                    
 [58] Meus pais nao se envolvem                                                                                                                                                                                                                                                                                            
 [59]                                                                                                                                                                                                                                                                                                                      
 [60] Meus pais nao se envolvem                                                                                                                                                                                                                                                                                            
 [61]                                                                                                                                                                                                                                                                                                                      
 [62]                                                                                                                                                                                                                                                                                                                      
 [63] Meus pais nao se envolvem                                                                                                                                                                                                                                                                                            
 [64] Meus pais nao se envolvem                                                                                                                                                                                                                                                                                            
 [65]                                                                                                                                                                                                                                                                                                                      
 [66] Apoiam minha escolha de curso                                                                                                                                                                                                                                                                                        
 [67]                                                                                                                                                                                                                                                                                                                      
 [68]                                                                                                                                                                                                                                                                                                                      
 [69] Eles me ajudam financeiramente nos estudos Eles me levariam ate uma instituicao para conhece-la independente da sua localizacao Apoiam minha escolha de curso                                                                                                                                                        
 [70] Estao constantemente me orientando quanto a cursos e instituicoes Querem decidir meu curso                                                                                                                                                                                                                           
 [71]                                                                                                                                                                                                                                                                                                                      
 [72]                                                                                                                                                                                                                                                                                                                      
 [73]                                                                                                                                                                                                                                                                                                                      
 [74]                                                                                                                                                                                                                                                                                                                      
 [75] Meus pais nao se envolvem                                                                                                                                                                                                                                                                                            
 [76] Meus pais nao se envolvem                                                                                                                                                                                                                                                                                            
 [77] Apoiam minha escolha de curso                                                                                                                                                                                                                                                                                        
 [78]                                                                                                                                                                                                                                                                                                                      
 [79] Apoiam minha escolha de curso                                                                                                                                                                                                                                                                                        
 [80]                                                                                                                                                                                                                                                                                                                      
 [81]                                                                                                                                                                                                                                                                                                                      
 [82]                                                                                                                                                                                                                                                                                                                      
 [83]                                                                                                                                                                                                                                                                                                                      
 [84]                                                                                                                                                                                                                                                                                                                      
 [85]                                                                                                                                                                                                                                                                                                                      
 [86]                                                                                                                                                                                                                                                                                                                      
 [87]                                                                                                                                                                                                                                                                                                                      
 [88]                                                                                                                                                                                                                                                                                                                      
 [89] Estao constantemente me orientando quanto a cursos e instituicoes Eles me ajudam financeiramente nos estudos Eles me levariam ate uma instituicao para conhece-la independente da sua localizacao Apoiam minha escolha de curso                                                                                      
 [90] Estao constantemente me orientando quanto a cursos e instituicoes Contribuem na hora de pesquisar sobre cursos e instituicoes Eles me ajudam financeiramente nos estudos Eles me levariam ate uma instituicao para conhece-la independente da sua localizacao Apoiam minha escolha de curso Meus pais nao se envolvem
 [91] Meus pais nao se envolvem                                                                                                                                                                                                                                                                                            
 [92] Apoiam minha escolha de curso                                                                                                                                                                                                                                                                                        
 [93]                                                                                                                                                                                                                                                                                                                      
 [94] Meus pais nao se envolvem                                                                                                                                                                                                                                                                                            
 [95]                                                                                                                                                                                                                                                                                                                      
 [96] Meus pais nao se envolvem                                                                                                                                                                                                                                                                                            
 [97]                                                                                                                                                                                                                                                                                                                      
 [98] Eles me ajudam financeiramente nos estudos Apoiam minha escolha de curso                                                                                                                                                                                                                                             
 [99] Meus pais nao se envolvem                                                                                                                                                                                                                                                                                            
[100] Meus pais nao se envolvem                                                                                                                                                                                                                                                                                            
[101]                                                                                                                                                                                                                                                                                                                      
[102]                                                                                                                                                                                                                                                                                                                      
[103] Eles me levariam ate uma instituicao para conhece-la independente da sua localizacao Apoiam minha escolha de curso                                                                                                                                                                                                   
[104] Meus pais nao se envolvem                                                                                                                                                                                                                                                                                            
[105]                                                                                                                                                                                                                                                                                                                      
[106]                                                                                                                                                                                                                                                                                                                      
[107]                                                                                                                                                                                                                                                                                                                      
[108] Meus pais nao se envolvem                                                                                                                                                                                                                                                                                            
[109]                                                                                                                                                                                                                                                                                                                      
[110]                                                                                                                                                                                                                                                                                                                      
[111]                                                                                                                                                                                                                                                                                                                      
[112]                                                                                                                                                                                                                                                                                                                      
[113]                                                                                                                                                                                                                                                                                                                      
[114]                                                                                                                                                                                                                                                                                                                      
[115]                                                                                                                                                                                                                                                                                                                      
[116] Estao constantemente me orientando quanto a cursos e instituicoes Contribuem na hora de pesquisar sobre cursos e instituicoes Eles me ajudam financeiramente nos estudos Eles me levariam ate uma instituicao para conhece-la independente da sua localizacao                                                        
[117] Eles me ajudam financeiramente nos estudos                                                                                                                                                                                                                                                                           
[118] Apoiam minha escolha de curso                                                                                                                                                                                                                                                                                        
[119] Estao constantemente me orientando quanto a cursos e instituicoes Contribuem na hora de pesquisar sobre cursos e instituicoes Eles me ajudam financeiramente nos estudos Apoiam minha escolha de curso                                                                                                               
[120]                                                                                                                                                                                                                                                                                                                      
[121]                                                                                                                                                                                                                                                                                                                      
[122]                                                                                                                                                                                                                                                                                                                      
[123] Apoiam minha escolha de curso                                                                                                                                                                                                                                                                                        
[124] Meus pais nao se envolvem                                                                                                                                                                                                                                                                                            
[125] Contribuem na hora de pesquisar sobre cursos e instituicoes                                                                                                                                                                                                                                                          
[126]                                                                                                                                                                                                                                                                                                                      
[127]                                                                                                                                                                                                                                                                                                                      
[128] Apoiam minha escolha de curso Meus pais nao se envolvem                                                                                                                                                                                                                                                              
[129]                                                                                                                                                                                                                                                                                                                      
[130]                                                                                                                                                                                                                                                                                                                      
[131] Contribuem na hora de pesquisar sobre cursos e instituicoes Eles me ajudam financeiramente nos estudos Apoiam minha escolha de curso                                                                                                                                                                                 
[132] Apoiam minha escolha de curso                                                                                                                                                                                                                                                                                        
[133]                                                                                                                                                                                                                                                                                                                      
[134]                                                                                                                                                                                                                                                                                                                      
[135] Contribuem na hora de pesquisar sobre cursos e instituicoes                                                                                                                                                                                                                                                          
[136] Est'o constantemente me orientando quanto a cursos e instituicoes"         
texto_pais <- limpeza(texto_pais)
conta_pais <- freq_terms(texto_pais)
wordcloud(texto_pais,
          min.freq = 1,
          max.words=200,
          random.order=FALSE,
          rot.per=0.35,
          colors=brewer.pal(8, "Dark2"))
plot(conta_pais)


#texto lazer#
texto_lazer <-   " [1] Ficar em casa vendo series filmes jogando estudando etc Encontrar meus amigos e colocar o papo em dia                                                                                                                                                                                                                                     
  [2] Ficar em casa vendo series filmes jogando estudando etc Sair para passear no shopping parque ou algum espaco publico                                                                                                                                                                                                                      
  [3] Sair para passear no shopping parque ou algum espaco publico Encontrar meus amigos e colocar o papo em dia Praticar alguma atividade fisica e/ou esportiva                                                                                                                                                                                
  [4] Ficar em casa vendo series filmes jogando estudando etc Praticar alguma atividade fisica e/ou esportiva                                                                                                                                                                                                                                   
  [5] Encontrar meus amigos e colocar o papo em dia Curtir shows e festivais de musica Praticar alguma atividade fisica e/ou esportiva                                                                                                                                                                                                          
  [6] Ficar em casa vendo series filmes jogando estudando etc Sair para passear no shopping parque ou algum espaco publico Aproveitar a noite em bares e baladas Encontrar meus amigos e colocar o papo em dia Curtir shows e festivais de musica                                                                                               
  [7] Ficar em casa vendo series filmes jogando estudando etc                                                                                                                                                                                                                                                                                   
  [8] Ficar em casa vendo series filmes jogando estudando etc                                                                                                                                                                                                                                                                                   
  [9] Ficar em casa vendo series filmes jogando estudando etc Sair para passear no shopping parque ou algum espaco publico                                                                                                                                                                                                                      
 [10] Ficar em casa vendo series filmes jogando estudando etc Praticar alguma atividade fisica e/ou esportiva                                                                                                                                                                                                                                   
 [11] Ficar em casa vendo series filmes jogando estudando etc Curtir shows e festivais de musica                                                                                                                                                                                                                                                
 [12]                                                                                                                                                                                                                                                                                                                                           
 [13] Ficar em casa vendo series filmes jogando estudando etc Aproveitar a noite em bares e baladas Encontrar meus amigos e colocar o papo em dia                                                                                                                                                                                               
 [14] Ficar em casa vendo series filmes jogando estudando etc Sair para passear no shopping parque ou algum espaco publico                                                                                                                                                                                                                      
 [15] Ficar em casa vendo series filmes jogando estudando etc Aproveitar a noite em bares e baladas Praticar alguma atividade fisica e/ou esportiva                                                                                                                                                                                             
 [16] Ficar em casa vendo series filmes jogando estudando etc Praticar alguma atividade fisica e/ou esportiva                                                                                                                                                                                                                                   
 [17] Ficar em casa vendo series filmes jogando estudando etc Encontrar meus amigos e colocar o papo em dia                                                                                                                                                                                                                                     
 [18] Ficar em casa vendo series filmes jogando estudando etc Sair para passear no shopping parque ou algum espaco publico Encontrar meus amigos e colocar o papo em dia Curtir shows e festivais de musica Praticar alguma atividade fisica e/ou esportiva Desenhar ler livros ir para igreja rezar                                            
 [19] Ficar em casa vendo series filmes jogando estudando etc Praticar alguma atividade fisica e/ou esportiva                                                                                                                                                                                                                                   
 [20] Ficar em casa vendo series filmes jogando estudando etc Praticar alguma atividade fisica e/ou esportiva Ir a estadios de futebol                                                                                                                                                                                                          
 [21] Encontrar meus amigos e colocar o papo em dia Curtir shows e festivais de musica                                                                                                                                                                                                                                                          
 [22] Ficar em casa vendo series filmes jogando estudando etc Sair para passear no shopping parque ou algum espaco publico Praticar alguma atividade fisica e/ou esportiva                                                                                                                                                                      
 [23] Ficar em casa vendo series filmes jogando estudando etc                                                                                                                                                                                                                                                                                   
 [24] Ficar em casa vendo series filmes jogando estudando etc Praticar alguma atividade fisica e/ou esportiva                                                                                                                                                                                                                                   
 [25] Ficar em casa vendo series filmes jogando estudando etc Sair para passear no shopping parque ou algum espaco publico Curtir shows e festivais de musica Frequentar museus galerias e espacos culturais Praticar alguma atividade fisica e/ou esportiva Tocar Saxofone                                                                     
 [26] Ficar em casa vendo series filmes jogando estudando etc Praticar alguma atividade fisica e/ou esportiva                                                                                                                                                                                                                                   
 [27] Sair para passear no shopping parque ou algum espaco publico Encontrar meus amigos e colocar o papo em dia Frequentar museus galerias e espacos culturais                                                                                                                                                                                 
 [28] Ficar em casa vendo series filmes jogando estudando etc Frequentar museus galerias e espacos culturais Praticar alguma atividade fisica e/ou esportiva                                                                                                                                                                                    
 [29] Ficar em casa vendo series filmes jogando estudando etc Frequentar museus galerias e espacos culturais Praticar alguma atividade fisica e/ou esportiva                                                                                                                                                                                    
 [30] Ficar em casa vendo series filmes jogando estudando etc                                                                                                                                                                                                                                                                                   
 [31] Ficar em casa vendo series filmes jogando estudando etc Praticar alguma atividade fisica e/ou esportiva                                                                                                                                                                                                                                   
 [32] Ficar em casa vendo series filmes jogando estudando etc Sair para passear no shopping parque ou algum espaco publico Encontrar meus amigos e colocar o papo em dia                                                                                                                                                                        
 [33] Ficar em casa vendo series filmes jogando estudando etc Praticar alguma atividade fisica e/ou esportiva                                                                                                                                                                                                                                   
 [34] Ficar em casa vendo series filmes jogando estudando etc Sair para passear no shopping parque ou algum espaco publico Curtir shows e festivais de musica Praticar alguma atividade fisica e/ou esportiva                                                                                                                                   
 [35] Ficar em casa vendo series filmes jogando estudando etc                                                                                                                                                                                                                                                                                   
 [36] Ficar em casa vendo series filmes jogando estudando etc Sair para passear no shopping parque ou algum espaco publico Praticar alguma atividade fisica e/ou esportiva                                                                                                                                                                      
 [37] Curtir shows e festivais de musica                                                                                                                                                                                                                                                                                                        
 [38] Ficar em casa vendo series filmes jogando estudando etc Aproveitar a noite em bares e baladas Encontrar meus amigos e colocar o papo em dia Curtir shows e festivais de musica Praticar alguma atividade fisica e/ou esportiva                                                                                                            
 [39] Ficar em casa vendo series filmes jogando estudando etc Aproveitar a noite em bares e baladas                                                                                                                                                                                                                                             
 [40] Ficar em casa vendo series filmes jogando estudando etc Sair para passear no shopping parque ou algum espaco publico Praticar alguma atividade fisica e/ou esportiva                                                                                                                                                                      
 [41] Ficar em casa vendo series filmes jogando estudando etc                                                                                                                                                                                                                                                                                   
 [42] Ficar em casa vendo series filmes jogando estudando etc Sair para passear no shopping parque ou algum espaco publico                                                                                                                                                                                                                      
 [43] Ficar em casa vendo series filmes jogando estudando etc Sair para passear no shopping parque ou algum espaco publico Encontrar meus amigos e colocar o papo em dia Praticar alguma atividade fisica e/ou esportiva                                                                                                                        
 [44] Ficar em casa vendo series filmes jogando estudando etc Encontrar meus amigos e colocar o papo em dia Frequentar museus galerias e espacos culturais Praticar alguma atividade fisica e/ou esportiva                                                                                                                                      
 [45] Ficar em casa vendo series filmes jogando estudando etc                                                                                                                                                                                                                                                                                   
 [46] Ficar em casa vendo series filmes jogando estudando etc                                                                                                                                                                                                                                                                                   
 [47] Ficar em casa tocando teclado.                                                                                                                                                                                                                                                                                                            
 [48] Ficar em casa vendo series filmes jogando estudando etc Sair para passear no shopping parque ou algum espaco publico Encontrar meus amigos e colocar o papo em dia Curtir shows e festivais de musica Frequentar museus galerias e espacos culturais Praticar alguma atividade fisica e/ou esportiva                                      
 [49] Ficar em casa vendo series filmes jogando estudando etc Encontrar meus amigos e colocar o papo em dia Curtir shows e festivais de musica Praticar alguma atividade fisica e/ou esportiva                                                                                                                                                  
 [50] Ficar em casa vendo series filmes jogando estudando etc Encontrar meus amigos e colocar o papo em dia Praticar alguma atividade fisica e/ou esportiva                                                                                                                                                                                     
 [51] Ficar em casa vendo series filmes jogando estudando etc Sair para passear no shopping parque ou algum espaco publico Aproveitar a noite em bares e baladas Curtir shows e festivais de musica Praticar alguma atividade fisica e/ou esportiva                                                                                             
 [52] Praticar alguma atividade fisica e/ou esportiva Passear com meu cachorro                                                                                                                                                                                                                                                                  
 [53] Ficar em casa vendo series filmes jogando estudando etc Encontrar meus amigos e colocar o papo em dia                                                                                                                                                                                                                                     
 [54] Ficar em casa vendo series filmes jogando estudando etc Sair para passear no shopping parque ou algum espaco publico Encontrar meus amigos e colocar o papo em dia Curtir shows e festivais de musica Frequentar museus galerias e espacos culturais Praticar alguma atividade fisica e/ou esportiva                                      
 [55] Encontrar meus amigos e colocar o papo em dia Praticar alguma atividade fisica e/ou esportiva                                                                                                                                                                                                                                             
 [56] Ficar em casa vendo series filmes jogando estudando etc Encontrar meus amigos e colocar o papo em dia Praticar alguma atividade fisica e/ou esportiva                                                                                                                                                                                     
 [57] Ficar em casa vendo series filmes jogando estudando etc                                                                                                                                                                                                                                                                                   
 [58] Ficar em casa vendo series filmes jogando estudando etc Aproveitar a noite em bares e baladas Encontrar meus amigos e colocar o papo em dia                                                                                                                                                                                               
 [59] Ficar em casa vendo series filmes jogando estudando etc Sair para passear no shopping parque ou algum espaco publico Frequentar museus galerias e espacos culturais                                                                                                                                                                       
 [60] Ficar em casa vendo series filmes jogando estudando etc                                                                                                                                                                                                                                                                                   
 [61] Ficar em casa vendo series filmes jogando estudando etc Sair para passear no shopping parque ou algum espaco publico Encontrar meus amigos e colocar o papo em dia Praticar alguma atividade fisica e/ou esportiva                                                                                                                        
 [62] Ficar em casa vendo series filmes jogando estudando etc Sair para passear no shopping parque ou algum espaco publico Aproveitar a noite em bares e baladas Encontrar meus amigos e colocar o papo em dia                                                                                                                                  
 [63] Praticar alguma atividade fisica e/ou esportiva                                                                                                                                                                                                                                                                                           
 [64] Ficar em casa vendo series filmes jogando estudando etc                                                                                                                                                                                                                                                                                   
 [65] Sair para passear no shopping parque ou algum espaco publico Curtir shows e festivais de musica Frequentar museus galerias e espacos culturais                                                                                                                                                                                            
 [66] Ficar em casa vendo series filmes jogando estudando etc Encontrar meus amigos e colocar o papo em dia Curtir shows e festivais de musica Praticar alguma atividade fisica e/ou esportiva                                                                                                                                                  
 [67] Ficar em casa vendo series filmes jogando estudando etc Sair para passear no shopping parque ou algum espaco publico Praticar alguma atividade fisica e/ou esportiva                                                                                                                                                                      
 [68] Praticar alguma atividade fisica e/ou esportiva                                                                                                                                                                                                                                                                                           
 [69] Ficar em casa vendo series filmes jogando estudando etc                                                                                                                                                                                                                                                                                   
 [70] Ficar em casa vendo series filmes jogando estudando etc                                                                                                                                                                                                                                                                                   
 [71] Ficar em casa vendo series filmes jogando estudando etc Sair para passear no shopping parque ou algum espaco publico Encontrar meus amigos e colocar o papo em dia Curtir shows e festivais de musica Praticar alguma atividade fisica e/ou esportiva                                                                                     
 [72] Ficar em casa vendo series filmes jogando estudando etc Sair para passear no shopping parque ou algum espaco publico Praticar alguma atividade fisica e/ou esportiva viajar                                                                                                                                                               
 [73] Ficar em casa vendo series filmes jogando estudando etc Sair para passear no shopping parque ou algum espaco publico Aproveitar a noite em bares e baladas Encontrar meus amigos e colocar o papo em dia Curtir shows e festivais de musica                                                                                               
 [74] Ficar em casa vendo series filmes jogando estudando etc Sair para passear no shopping parque ou algum espaco publico Aproveitar a noite em bares e baladas Encontrar meus amigos e colocar o papo em dia Curtir shows e festivais de musica                                                                                               
 [75] Ficar em casa vendo series filmes jogando estudando etc Sair para passear no shopping parque ou algum espaco publico Aproveitar a noite em bares e baladas Encontrar meus amigos e colocar o papo em dia Curtir shows e festivais de musica Frequentar museus galerias e espacos culturais Praticar alguma atividade fisica e/ou esportiva
 [76] Ficar em casa vendo series filmes jogando estudando etc Praticar alguma atividade fisica e/ou esportiva                                                                                                                                                                                                                                   
 [77] Ficar em casa vendo series filmes jogando estudando etc Frequentar museus galerias e espacos culturais                                                                                                                                                                                                                                    
 [78] Ficar em casa vendo series filmes jogando estudando etc                                                                                                                                                                                                                                                                                   
 [79] Encontrar meus amigos e colocar o papo em dia                                                                                                                                                                                                                                                                                             
 [80] Ficar em casa vendo series filmes jogando estudando etc                                                                                                                                                                                                                                                                                   
 [81] Ficar em casa vendo series filmes jogando estudando etc Curtir shows e festivais de musica Frequentar museus galerias e espacos culturais Praticar alguma atividade fisica e/ou esportiva                                                                                                                                                 
 [82]                                                                                                                                                                                                                                                                                                                                           
 [83] Ficar em casa vendo series filmes jogando estudando etc Sair para passear no shopping parque ou algum espaco publico Aproveitar a noite em bares e baladas Encontrar meus amigos e colocar o papo em dia                                                                                                                                  
 [84] Ficar em casa vendo series filmes jogando estudando etc Encontrar meus amigos e colocar o papo em dia Praticar alguma atividade fisica e/ou esportiva                                                                                                                                                                                     
 [85] Ficar em casa vendo series filmes jogando estudando etc Praticar alguma atividade fisica e/ou esportiva                                                                                                                                                                                                                                   
 [86] Ficar em casa vendo series filmes jogando estudando etc                                                                                                                                                                                                                                                                                   
 [87] Ficar em casa vendo series filmes jogando estudando etc Praticar alguma atividade fisica e/ou esportiva                                                                                                                                                                                                                                   
 [88] Ficar em casa vendo series filmes jogando estudando etc                                                                                                                                                                                                                                                                                   
 [89] Ficar em casa vendo series filmes jogando estudando etc                                                                                                                                                                                                                                                                                   
 [90] Ficar em casa vendo series filmes jogando estudando etc                                                                                                                                                                                                                                                                                   
 [91] Ficar em casa vendo series filmes jogando estudando etc Sair para passear no shopping parque ou algum espaco publico                                                                                                                                                                                                                      
 [92] Ficar em casa vendo series filmes jogando estudando etc Sair para passear no shopping parque ou algum espaco publico Aproveitar a noite em bares e baladas Encontrar meus amigos e colocar o papo em dia Praticar alguma atividade fisica e/ou esportiva                                                                                  
 [93] Ficar em casa vendo series filmes jogando estudando etc                                                                                                                                                                                                                                                                                   
 [94] Ficar em casa vendo series filmes jogando estudando etc Sair para passear no shopping parque ou algum espaco publico Frequentar museus galerias e espacos culturais Praticar alguma atividade fisica e/ou esportiva                                                                                                                       
 [95] Ficar em casa vendo series filmes jogando estudando etc Sair para passear no shopping parque ou algum espaco publico Praticar alguma atividade fisica e/ou esportiva                                                                                                                                                                      
 [96] Ficar em casa vendo series filmes jogando estudando etc Sair para passear no shopping parque ou algum espaco publico Encontrar meus amigos e colocar o papo em dia Praticar alguma atividade fisica e/ou esportiva                                                                                                                        
 [97] Ficar em casa vendo series filmes jogando estudando etc Sair para passear no shopping parque ou algum espaco publico                                                                                                                                                                                                                      
 [98] Ficar em casa vendo series filmes jogando estudando etc Praticar alguma atividade fisica e/ou esportiva                                                                                                                                                                                                                                   
 [99] Sair para passear no shopping parque ou algum espaco publico                                                                                                                                                                                                                                                                              
[100] Ficar em casa vendo series filmes jogando estudando etc Sair para passear no shopping parque ou algum espaco publico Encontrar meus amigos e colocar o papo em dia                                                                                                                                                                        
[101] Praticar alguma atividade fisica e/ou esportiva                                                                                                                                                                                                                                                                                           
[102] Ficar em casa vendo series filmes jogando estudando etc                                                                                                                                                                                                                                                                                   
[103] Ficar em casa vendo series filmes jogando estudando etc Sair para passear no shopping parque ou algum espaco publico Curtir shows e festivais de musica Praticar alguma atividade fisica e/ou esportiva                                                                                                                                   
[104] Ficar em casa vendo series filmes jogando estudando etc                                                                                                                                                                                                                                                                                   
[105] Ficar em casa vendo series filmes jogando estudando etc Sair para passear no shopping parque ou algum espaco publico Encontrar meus amigos e colocar o papo em dia Frequentar museus galerias e espacos culturais Praticar alguma atividade fisica e/ou esportiva                                                                         
[106] Ficar em casa vendo series filmes jogando estudando etc                                                                                                                                                                                                                                                                                   
[107] Ficar em casa vendo series filmes jogando estudando etc Aproveitar a noite em bares e baladas Encontrar meus amigos e colocar o papo em dia Praticar alguma atividade fisica e/ou esportiva                                                                                                                                               
[108] Ficar em casa vendo series filmes jogando estudando etc Aproveitar a noite em bares e baladas Praticar alguma atividade fisica e/ou esportiva                                                                                                                                                                                             
[109] Ficar em casa vendo series filmes jogando estudando etc Praticar alguma atividade fisica e/ou esportiva                                                                                                                                                                                                                                   
[110] Ficar em casa vendo series filmes jogando estudando etc                                                                                                                                                                                                                                                                                   
[111] Ficar em casa vendo series filmes jogando estudando etc Frequentar museus galerias e espacos culturais Praticar alguma atividade fisica e/ou esportiva                                                                                                                                                                                    
[112] Ficar em casa vendo series filmes jogando estudando etc Sair para passear no shopping parque ou algum espaco publico Encontrar meus amigos e colocar o papo em dia                                                                                                                                                                        
[113] Ficar em casa vendo series filmes jogando estudando etc Sair para passear no shopping parque ou algum espaco publico Praticar alguma atividade fisica e/ou esportiva                                                                                                                                                                      
[114] Praticar alguma atividade fisica e/ou esportiva                                                                                                                                                                                                                                                                                           
[115] Ficar em casa vendo series filmes jogando estudando etc Sair para passear no shopping parque ou algum espaco publico Curtir shows e festivais de musica Frequentar museus galerias e espacos culturais Praticar alguma atividade fisica e/ou esportiva                                                                                    
[116] Ficar em casa vendo series filmes jogando estudando etc Praticar alguma atividade fisica e/ou esportiva                                                                                                                                                                                                                                   
[117] Ficar em casa vendo series filmes jogando estudando etc Encontrar meus amigos e colocar o papo em dia                                                                                                                                                                                                                                     
[118] Ficar em casa vendo series filmes jogando estudando etc Encontrar meus amigos e colocar o papo em dia Praticar alguma atividade fisica e/ou esportiva                                                                                                                                                                                     
[119] Ficar em casa vendo series filmes jogando estudando etc Sair para passear no shopping parque ou algum espaco publico Aproveitar a noite em bares e baladas Encontrar meus amigos e colocar o papo em dia Praticar alguma atividade fisica e/ou esportiva                                                                                  
[120] Ficar em casa vendo series filmes jogando estudando etc Sair para passear no shopping parque ou algum espaco publico Aproveitar a noite em bares e baladas Encontrar meus amigos e colocar o papo em dia Curtir shows e festivais de musica                                                                                               
[121] Ficar em casa vendo series filmes jogando estudando etc Sair para passear no shopping parque ou algum espaco publico Praticar alguma atividade fisica e/ou esportiva                                                                                                                                                                      
[122] Ficar em casa vendo series filmes jogando estudando etc Sair para passear no shopping parque ou algum espaco publico Praticar alguma atividade fisica e/ou esportiva Livros                                                                                                                                                               
[123] Praticar alguma atividade fisica e/ou esportiva                                                                                                                                                                                                                                                                                           
[124] Ficar em casa vendo series filmes jogando estudando etc Curtir shows e festivais de musica Praticar alguma atividade fisica e/ou esportiva                                                                                                                                                                                                
[125] Ficar em casa vendo series filmes jogando estudando etc                                                                                                                                                                                                                                                                                   
[126] Sair para passear no shopping parque ou algum espaco publico Frequentar museus galerias e espacos culturais Viajar por cidades aleatorias                                                                                                                                                                                                 
[127] Ficar em casa vendo series filmes jogando estudando etc Sair para passear no shopping parque ou algum espaco publico Encontrar meus amigos e colocar o papo em dia Frequentar museus galerias e espacos culturais Praticar alguma atividade fisica e/ou esportiva                                                                         
[128] Ficar em casa vendo series filmes jogando estudando etc Ficar em casa lendo                                                                                                                                                                                                                                                               
[129] Ficar em casa vendo series filmes jogando estudando etc Sair para passear no shopping parque ou algum espaco publico                                                                                                                                                                                                                      
[130] Ficar em casa vendo series filmes jogando estudando etc                                                                                                                                                                                                                                                                                   
[131] Ficar em casa vendo series filmes jogando estudando etc Sair para passear no shopping parque ou algum espaco publico Encontrar meus amigos e colocar o papo em dia Frequentar museus galerias e espacos culturais Praticar alguma atividade fisica e/ou esportiva                                                                         
[132] Praticar alguma atividade fisica e/ou esportiva                                                                                                                                                                                                                                                                                           
[133] Ficar em casa vendo series filmes jogando estudando etc Sair para passear no shopping parque ou algum espaco publico Praticar alguma atividade fisica e/ou esportiva                                                                                                                                                                      
[134] Ficar em casa vendo series, filmes, jogando, estudando, etc, Encontrar meus amigos e colocar o papo em dia, Frequentar museus, galerias e espacos culturais                                                                                                                                                                               
[135] Ficar em casa vendo series, filmes, jogando, estudando, etc                                                                                                                                                                                                                                                                               
[136] Aproveitar a noite em bares e baladas, Praticar alguma atividade fisica e/ou esportiva"
texto_lazer <- limpeza(texto_lazer)
conta_lazer <- freq_terms(texto_lazer)
wordcloud(texto_lazer)
plot(conta_lazer)

#texto momento estudo#
texto_momentoEs <- "  [1]                                                                           
  [2]                                                                           
  [3]                                                                           
  [4]                                                                           
  [5]                                                                           
  [6]                                                                           
  [7]                                                                           
  [8] Conclui o ensino medio mas estou sem estudar a algum tempo                
  [9] Buscando uma terceira graduacao                                           
 [10] Conclui o ensino medio mas estou sem estudar a algum tempo                
 [11] Curso webdesigneringles                                                   
 [12]                                                                           
 [13]                                                                           
 [14]                                                                           
 [15] Conclui o ensino medio mas estou sem estudar a algum tempo                
 [16]                                                                           
 [17]                                                                           
 [18] Buscando uma segunda graduacao                                            
 [19] Cursando o ensino medio                                                   
 [20]                                                                           
 [21]                                                                           
 [22]                                                                           
 [23]                                                                           
 [24]                                                                           
 [25]                                                                           
 [26]                                                                           
 [27]                                                                           
 [28]                                                                           
 [29]                                                                           
 [30] Cursando o ensino medio Cursando um pre-vestibular                        
 [31]                                                                           
 [32] Conclui o ensino medio mas estou sem estudar a algum tempo                
 [33]                                                                           
 [34] Cursando o ensino medio Curso tecnico                                     
 [35]                                                                           
 [36]                                                                           
 [37]                                                                           
 [38] Cursando o ensino medio                                                   
 [39] Cursando o ensino medio                                                   
 [40]                                                                           
 [41] Ensino tecnico cursando                                                   
 [42] Conclui o ensino medio mas estou sem estudar a algum tempo                
 [43] Cursando o ensino medio                                                   
 [44]                                                                           
 [45] Buscando uma segunda graduacao                                            
 [46]                                                                           
 [47] Trabalhando para obter dinheiro para estudar.                             
 [48]                                                                           
 [49]                                                                           
 [50] Cursando o ensino medio                                                   
 [51] Cursando um pre-vestibular                                                
 [52] Buscando uma segunda graduacao                                            
 [53] Cursando o ensino medio                                                   
 [54]                                                                           
 [55]                                                                           
 [56]                                                                           
 [57] Cursando um supletivo                                                     
 [58] Conclui o ensino medio mas estou sem estudar a algum tempo                
 [59]                                                                           
 [60]                                                                           
 [61]                                                                           
 [62]                                                                           
 [63] Conclui o ensino medio mas estou sem estudar a algum tempo                
 [64] Conclui o ensino medio mas estou sem estudar a algum tempo                
 [65]                                                                           
 [66] Conclui o ensino medio mas estou sem estudar a algum tempo                
 [67]                                                                           
 [68]                                                                           
 [69] Cursando um pre-vestibular                                                
 [70] Cursando o ensino medio                                                   
 [71]                                                                           
 [72]                                                                           
 [73]                                                                           
 [74]                                                                           
 [75] Cursando um pre-vestibular                                                
 [76] Primeira graduacao                                                        
 [77] Cursando o ensino medio                                                   
 [78]                                                                           
 [79] Conclui o ensino medio mas estou sem estudar a algum tempo                
 [80]                                                                           
 [81]                                                                           
 [82]                                                                           
 [83]                                                                           
 [84]                                                                           
 [85]                                                                           
 [86]                                                                           
 [87]                                                                           
 [88]                                                                           
 [89] Cursando o ensino medio                                                   
 [90] Cursando o ensino medio                                                   
 [91] Cursando o ensino medio                                                   
 [92] Buscando uma segunda graduacao                                            
 [93]                                                                           
 [94] Cursando o ensino medio                                                   
 [95]                                                                           
 [96] Conclui o ensino medio mas estou sem estudar a algum tempo                
 [97]                                                                           
 [98] Cursando o ensino medio                                                   
 [99] Conclui o ensino medio mas estou sem estudar a algum tempo                
[100] Conclui o ensino medio mas estou sem estudar a algum tempo                
[101]                                                                           
[102]                                                                           
[103] Cursando o ensino medio Faco IFTM (Instituto Federal do TriYngulo Mineiro)
[104] Cursando uma graduacao                                                    
[105]                                                                           
[106]                                                                           
[107]                                                                           
[108] Cursando o ensino medio                                                   
[109]                                                                           
[110]                                                                           
[111]                                                                           
[112]                                                                           
[113]                                                                           
[114]                                                                           
[115]                                                                           
[116] Cursando o ensino medio                                                   
[117]                                                                           
[118] Conclui o ensino medio mas estou sem estudar a algum tempo                
[119] Cursando o ensino medio                                                   
[120]                                                                           
[121]                                                                           
[122]                                                                           
[123] Buscando uma segunda graduacao                                            
[124] Conclui o ensino medio mas estou sem estudar a algum tempo                
[125] Conclui o ensino medio mas estou sem estudar a algum tempo                
[126]                                                                           
[127]                                                                           
[128] Conclui o ensino medio mas estou sem estudar a algum tempo                
[129]                                                                           
[130]                                                                           
[131] Cursando o ensino medio                                                   
[132] Buscando uma segunda graduacao                                            
[133]                                                                           
[134]                                                                           
[135] Conclui o ensino medio, mas, estou sem estudar a algum tempo              
[136] Cursando o ensino medio" 
texto_momentoES <- limpeza(texto_momentoEs)
wordcloud(texto_momentoES)
conta_momento <- freq_terms(texto_momentoES)
plot(conta_momento)

#texto prep vestibular#
texto_prepVest <-  " [1]                                                                                                                                                               
  [2]                                                                                                                                                               
  [3]                                                                                                                                                               
  [4]                                                                                                                                                               
  [5]                                                                                                                                                               
  [6]                                                                                                                                                               
  [7]                                                                                                                                                               
  [8] Estudo em casa por conta propria                                                                                                                              
  [9] nao me preparo para o vestibular                                                                                                                              
 [10] Estudo em casa por conta propria Leio muitos livros e artigos Assisto videoaulas no Youtube                                                                   
 [11] Estudo em casa por conta propria                                                                                                                              
 [12]                                                                                                                                                               
 [13]                                                                                                                                                               
 [14]                                                                                                                                                               
 [15] Estudo em casa por conta propria Leio muitos livros e artigos Assisto videoaulas no Youtube                                                                   
 [16]                                                                                                                                                               
 [17]                                                                                                                                                               
 [18] Estudo em casa por conta propria Assisto videoaulas no Youtube nao me preparo para o vestibular                                                               
 [19] Faco um curso pre-vestibular                                                                                                                                  
 [20]                                                                                                                                                               
 [21]                                                                                                                                                               
 [22]                                                                                                                                                               
 [23]                                                                                                                                                               
 [24]                                                                                                                                                               
 [25]                                                                                                                                                               
 [26]                                                                                                                                                               
 [27]                                                                                                                                                               
 [28]                                                                                                                                                               
 [29]                                                                                                                                                               
 [30] Faco provas que simulam o vestibular                                                                                                                          
 [31]                                                                                                                                                               
 [32] Leio muitos livros e artigos                                                                                                                                  
 [33]                                                                                                                                                               
 [34] Estudo em casa por conta propria Leio muitos livros e artigos Assisto videoaulas no Youtube Faco provas que simulam o vestibular                              
 [35]                                                                                                                                                               
 [36]                                                                                                                                                               
 [37]                                                                                                                                                               
 [38] Faco um curso pre-vestibular Faco provas que simulam o vestibular                                                                                             
 [39] Assisto videoaulas no Youtube Faco provas que simulam o vestibular                                                                                            
 [40]                                                                                                                                                               
 [41] Estudo em casa por conta propria Assisto videoaulas no Youtube                                                                                                
 [42] Estudo em casa por conta propria                                                                                                                              
 [43] Participo de grupos de estudo Faco provas que simulam o vestibular                                                                                            
 [44]                                                                                                                                                               
 [45] Faco um curso pre-vestibular                                                                                                                                  
 [46]                                                                                                                                                               
 [47] nao me preparo para o vestibular                                                                                                                              
 [48]                                                                                                                                                               
 [49]                                                                                                                                                               
 [50] Faco um curso pre-vestibular Estudo em casa por conta propria Faco provas que simulam o vestibular                                                            
 [51] Estudo em casa por conta propria Leio muitos livros e artigos Assisto videoaulas no Youtube Participo de grupos de estudo Faco provas que simulam o vestibular
 [52] Leio muitos livros e artigos Assisto videoaulas no Youtube                                                                                                    
 [53] Estudo em casa por conta propria Faco provas que simulam o vestibular                                                                                         
 [54]                                                                                                                                                               
 [55]                                                                                                                                                               
 [56]                                                                                                                                                               
 [57] Faco um curso pre-vestibular                                                                                                                                  
 [58] Faco um curso pre-vestibular                                                                                                                                  
 [59]                                                                                                                                                               
 [60] Assisto videoaulas em sites pagos                                                                                                                             
 [61]                                                                                                                                                               
 [62]                                                                                                                                                               
 [63] Estudo em casa por conta propria                                                                                                                              
 [64] Estudo em casa por conta propria                                                                                                                              
 [65]                                                                                                                                                               
 [66] Faco um curso pre-vestibular Estudo em casa por conta propria Assisto videoaulas no Youtube                                                                   
 [67]                                                                                                                                                               
 [68]                                                                                                                                                               
 [69] Faco um curso pre-vestibular Estudo em casa por conta propria Leio muitos livros e artigos Assisto videoaulas no Youtube Faco provas que simulam o vestibular 
 [70] Estudo em casa por conta propria Leio muitos livros e artigos Assisto videoaulas no Youtube                                                                   
 [71]                                                                                                                                                               
 [72]                                                                                                                                                               
 [73]                                                                                                                                                               
 [74]                                                                                                                                                               
 [75] Faco um curso pre-vestibular Estudo em casa por conta propria Leio muitos livros e artigos Assisto videoaulas no Youtube                                      
 [76] nao me preparo para o vestibular                                                                                                                              
 [77] Estudo em casa por conta propria Assisto videoaulas no Youtube Participo de grupos de estudo Faco provas que simulam o vestibular                             
 [78]                                                                                                                                                               
 [79] Estudo em casa por conta propria Leio muitos livros e artigos Assisto videoaulas no Youtube                                                                   
 [80]                                                                                                                                                               
 [81]                                                                                                                                                               
 [82]                                                                                                                                                               
 [83]                                                                                                                                                               
 [84]                                                                                                                                                               
 [85]                                                                                                                                                               
 [86]                                                                                                                                                               
 [87]                                                                                                                                                               
 [88]                                                                                                                                                               
 [89] Faco provas que simulam o vestibular                                                                                                                          
 [90] Estudo em casa por conta propria Assisto videoaulas no Youtube                                                                                                
 [91] Faco um curso pre-vestibular                                                                                                                                  
 [92] Estudo em casa por conta propria Leio muitos livros e artigos Assisto videoaulas no Youtube                                                                   
 [93]                                                                                                                                                               
 [94] Faco um curso pre-vestibular Assisto videoaulas no Youtube                                                                                                    
 [95]                                                                                                                                                               
 [96] Estudo em casa por conta propria Assisto videoaulas no Youtube                                                                                                
 [97]                                                                                                                                                               
 [98] Estudo em casa por conta propria Assisto videoaulas no Youtube Faco provas que simulam o vestibular                                                           
 [99] Estudo em casa por conta propria                                                                                                                              
[100] Estudo em casa por conta propria Assisto videoaulas no Youtube                                                                                                
[101]                                                                                                                                                               
[102]                                                                                                                                                               
[103] Assisto videoaulas no Youtube Assino o Descomplica                                                                                                            
[104] Assisto videoaulas no Youtube Participo de grupos de estudo                                                                                                   
[105]                                                                                                                                                               
[106]                                                                                                                                                               
[107]                                                                                                                                                               
[108] Estudo em casa por conta propria Assisto videoaulas no Youtube Faco provas que simulam o vestibular                                                           
[109]                                                                                                                                                               
[110]                                                                                                                                                               
[111]                                                                                                                                                               
[112]                                                                                                                                                               
[113]                                                                                                                                                               
[114]                                                                                                                                                               
[115]                                                                                                                                                               
[116] Estudo em casa por conta propria Faco provas que simulam o vestibular                                                                                         
[117] Faco um curso pre-vestibular                                                                                                                                  
[118] Estudo em casa por conta propria                                                                                                                              
[119] Estudo em casa por conta propria Assisto videoaulas no Youtube Faco provas que simulam o vestibular                                                           
[120]                                                                                                                                                               
[121]                                                                                                                                                               
[122]                                                                                                                                                               
[123] Estudo em casa por conta propria Assisto videoaulas no Youtube Faco provas que simulam o vestibular                                                           
[124] nao me preparo para o vestibular                                                                                                                              
[125]                                                                                                                                                               
[126]                                                                                                                                                               
[127]                                                                                                                                                               
[128] Estudo em casa por conta propria Leio muitos livros e artigos Assisto videoaulas no Youtube Faco provas que simulam o vestibular                              
[129]                                                                                                                                                               
[130]                                                                                                                                                               
[131] Estudo em casa por conta propria Leio muitos livros e artigos Assisto videoaulas no Youtube                                                                   
[132] Estudo em casa por conta propria Assisto videoaulas no Youtube Faco provas que simulam o vestibular                                                           
[133]                                                                                                                                                               
[134]                                                                                                                                                               
[135] Estudo em casa por conta propria, Assisto videoaulas no Youtube, Faco provas que simulam o vestibular                                                         
[136] Faco um curso pre-vestibular"
texto_prepVest <- limpeza(texto_prepVest)
texto_prepVest <- removeWords(texto_prepVest,
                              "vestibular")

wordcloud(texto_prepVest,
          min.freq = 1,
          max.words=200,
          random.order=FALSE,
          rot.per=0.35,
          colors=brewer.pal(8, "Dark2"))

conta_prepVest <- freq_terms(texto_prepVest)
plot(conta_prepVest)


