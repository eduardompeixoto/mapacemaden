
library(shiny)
# risco hidro
require(rlang)
require(rvest)
require(dplyr)
require(reshape)



## Carregando pacotes exigidos: xml2
#regiao baixada 1

url <- "https://monitoramento.preserve.rio.br/monitoramento/monitoramento.php?action=2&id=1"
h1 <- read_html(url)

a<- html_text (h1,"table table-sm table-responsive-sm justify-content-center")

a<-as.data.frame(a)

file_split = data.frame(a,reshape::colsplit(a$a,split="\n",names="buffer"))



m1<-paste(file_split$NA..29, file_split$NA..33,sep=";")

m2<-paste(file_split$NA..42, file_split$NA..46,sep=";")

m3<-paste(file_split$NA..55, file_split$NA..59,sep=";")

m4<-paste(file_split$NA..68, file_split$NA..72,sep=";")

m5<-paste(file_split$NA..81, file_split$NA..85,sep=";")

m6<-paste(file_split$NA..94, file_split$NA..98,sep=";")

m7<-paste(file_split$NA..107, file_split$NA..111,sep=";")

m8<-paste(file_split$NA..120, file_split$NA..124,sep=";")


baixada<-as.list(rbind(c(m1,m2,m3,m4,m5,m6,m7,m8)))
baixada<-list2DF(baixada)
baixada<-t(baixada)
baixada<-data.frame(baixada)



## Carregando pacotes exigidos: xml2

#regiao litoranea

url <- "https://monitoramento.preserve.rio.br/monitoramento/monitoramento.php?action=2&id=2"
h1 <- read_html(url)

a<- html_text (h1,"table table-sm table-responsive-sm justify-content-center")

a<-as.data.frame(a)

file_split = data.frame(a,reshape::colsplit(a$a,split="\n",names="buffer"))

m1<-paste(file_split$NA..29, file_split$NA..33,sep=";")

m2<-paste(file_split$NA..42, file_split$NA..46,sep=";")

m3<-paste(file_split$NA..55, file_split$NA..59,sep=";")

m4<-paste(file_split$NA..68, file_split$NA..72,sep=";")

m5<-paste(file_split$NA..81, file_split$NA..85,sep=";")

m6<-paste(file_split$NA..94, file_split$NA..98,sep=";")

m7<-paste(file_split$NA..107, file_split$NA..111,sep=";")

m8<-paste(file_split$NA..120, file_split$NA..124,sep=";")

m9<-paste(file_split$NA..133, file_split$NA..137,sep=";")

m10<-paste(file_split$NA..146, file_split$NA..150,sep=";")

m11<-paste(file_split$NA..159, file_split$NA..163,sep=";")

m12<-paste(file_split$NA..172, file_split$NA..176,sep=";")

litoranea<-as.list(rbind(c(m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,m11,m12)))
litoranea<-list2DF(litoranea)
litoranea<-t(litoranea)
litoranea<-data.frame(litoranea)

#capital


url <- "https://monitoramento.preserve.rio.br/monitoramento/monitoramento.php?action=2&id=3"
h1 <- read_html(url)

a<- html_text (h1,"table table-sm table-responsive-sm justify-content-center")

a<-as.data.frame(a)

file_split = data.frame(a,reshape::colsplit(a$a,split="\n",names="buffer"))

m1<-paste(file_split$NA..29, file_split$NA..33,sep=";")
capital<-list2DF(as.list(m1))
capital<-t(capital)
capital<-data.frame(capital)

## Carregando pacotes exigidos: xml2

#costa verde

url <- "https://monitoramento.preserve.rio.br/monitoramento/monitoramento.php?action=2&id=4"
h1 <- read_html(url)

a<- html_text (h1,"table table-sm table-responsive-sm justify-content-center")

a<-as.data.frame(a)

file_split = data.frame(a,reshape::colsplit(a$a,split="\n",names="buffer"))

m1<-paste(file_split$NA..29, file_split$NA..33,sep=";")

m2<-paste(file_split$NA..42, file_split$NA..46,sep=";")

m3<-paste(file_split$NA..55, file_split$NA..59,sep=";")



cv<-as.list(rbind(c(m1,m2,m3)))
cv<-list2DF(cv)
cv<-t(cv)
cv<-data.frame(cv)


#metro

url <- "https://monitoramento.preserve.rio.br/monitoramento/monitoramento.php?action=2&id=5"
h1 <- read_html(url)

a<- html_text (h1,"table table-sm table-responsive-sm justify-content-center")

a<-as.data.frame(a)

file_split = data.frame(a,reshape::colsplit(a$a,split="\n",names="buffer"))

m1<-paste(file_split$NA..29, file_split$NA..33,sep=";")

m2<-paste(file_split$NA..42, file_split$NA..46,sep=";")

m3<-paste(file_split$NA..55, file_split$NA..59,sep=";")

m4<-paste(file_split$NA..68, file_split$NA..72,sep=";")

m5<-paste(file_split$NA..81, file_split$NA..85,sep=";")

m6<-paste(file_split$NA..94, file_split$NA..98,sep=";")


metro<-as.list(rbind(c(m1,m2,m3,m4,m5,m6)))
metro<-list2DF(metro)
metro<-t(metro)
metro<-data.frame(metro)

#regiao norte

url <- "https://monitoramento.preserve.rio.br/monitoramento/monitoramento.php?action=2&id=6"
h1 <- read_html(url)

a<- html_text (h1,"table table-sm table-responsive-sm justify-content-center")

a<-as.data.frame(a)

file_split = data.frame(a,reshape::colsplit(a$a,split="\n",names="buffer"))



m1<-paste(file_split$NA..29, file_split$NA..33,sep=";")

m2<-paste(file_split$NA..42, file_split$NA..46,sep=";")

m3<-paste(file_split$NA..55, file_split$NA..59,sep=";")

m4<-paste(file_split$NA..68, file_split$NA..72,sep=";")

m5<-paste(file_split$NA..81, file_split$NA..85,sep=";")

m6<-paste(file_split$NA..94, file_split$NA..98,sep=";")


norte<-as.list(rbind(c(m1,m2,m3,m4,m5,m6)))
norte<-list2DF(norte)
norte<-t(norte)
norte<-data.frame(norte)


#regiao Noroeste

url <- "https://monitoramento.preserve.rio.br/monitoramento/monitoramento.php?action=2&id=7"
h1 <- read_html(url)

a<- html_text (h1,"table table-sm table-responsive-sm justify-content-center")

a<-as.data.frame(a)

file_split = data.frame(a,reshape::colsplit(a$a,split="\n",names="buffer"))
m1<-paste(file_split$NA..29, file_split$NA..33,sep=";")

m2<-paste(file_split$NA..42, file_split$NA..46,sep=";")

m3<-paste(file_split$NA..55, file_split$NA..59,sep=";")

m4<-paste(file_split$NA..68, file_split$NA..72,sep=";")

m5<-paste(file_split$NA..81, file_split$NA..85,sep=";")

m6<-paste(file_split$NA..94, file_split$NA..98,sep=";")

m7<-paste(file_split$NA..107, file_split$NA..111,sep=";")

m8<-paste(file_split$NA..120, file_split$NA..124,sep=";")

m9<-paste(file_split$NA..133, file_split$NA..137,sep=";")

m10<-paste(file_split$NA..146, file_split$NA..150,sep=";")

m11<-paste(file_split$NA..159, file_split$NA..163,sep=";")

m12<-paste(file_split$NA..172, file_split$NA..176,sep=";")

m13<-paste(file_split$NA..185, file_split$NA..189,sep=";")

m14<-paste(file_split$NA..198, file_split$NA..202,sep=";")

m15<-paste(file_split$NA..211, file_split$NA..215,sep=";")

noroeste<-as.list(rbind(c(m1,m2,m3,m4,m5,m6, m7, m8,m9,m10,m11,m12,m13,m14,m15)))
noroeste<-list2DF(noroeste)
noroeste<-t(noroeste)
noroeste<-data.frame(noroeste)



#regiao Serrana

url <- "https://monitoramento.preserve.rio.br/monitoramento/monitoramento.php?action=2&id=8"
h1 <- read_html(url)

a<- html_text (h1,"table table-sm table-responsive-sm justify-content-center")

a<-as.data.frame(a)

file_split = data.frame(a,reshape::colsplit(a$a,split="\n",names="buffer"))
m1<-paste(file_split$NA..29, file_split$NA..33,sep=";")

m2<-paste(file_split$NA..42, file_split$NA..46,sep=";")

m3<-paste(file_split$NA..55, file_split$NA..59,sep=";")

m4<-paste(file_split$NA..68, file_split$NA..72,sep=";")

m5<-paste(file_split$NA..81, file_split$NA..85,sep=";")

m6<-paste(file_split$NA..94, file_split$NA..98,sep=";")

m7<-paste(file_split$NA..107, file_split$NA..111,sep=";")




serrana<-as.list(rbind(c(m1,m2,m3,m4,m5,m6, m7)))
serrana<-list2DF(serrana)
serrana<-t(serrana)
serrana<-data.frame(serrana)




#regiao Serrana2

url <- "https://monitoramento.preserve.rio.br/monitoramento/monitoramento.php?action=2&id=9"
h1 <- read_html(url)

a<- html_text (h1,"table table-sm table-responsive-sm justify-content-center")

a<-as.data.frame(a)

file_split = data.frame(a,reshape::colsplit(a$a,split="\n",names="buffer"))
m1<-paste(file_split$NA..29, file_split$NA..33,sep=";")

m2<-paste(file_split$NA..42, file_split$NA..46,sep=";")

m3<-paste(file_split$NA..55, file_split$NA..59,sep=";")

m4<-paste(file_split$NA..68, file_split$NA..72,sep=";")

m5<-paste(file_split$NA..81, file_split$NA..85,sep=";")

m6<-paste(file_split$NA..94, file_split$NA..98,sep=";")

m7<-paste(file_split$NA..107, file_split$NA..111,sep=";")

m8<-paste(file_split$NA..120, file_split$NA..124,sep=";")

m9<-paste(file_split$NA..133, file_split$NA..137,sep=";")


serrana2<-as.list(rbind(c(m1,m2,m3,m4,m5,m6, m7,m8,m9)))
serrana2<-list2DF(serrana2)
serrana2<-t(serrana2)
serrana2<-data.frame(serrana2)



#regiao sul

url <- "https://monitoramento.preserve.rio.br/monitoramento/monitoramento.php?action=2&id=10"
h1 <- read_html(url)

a<- html_text (h1,"table table-sm table-responsive-sm justify-content-center")

a<-as.data.frame(a)

file_split = data.frame(a,reshape::colsplit(a$a,split="\n",names="buffer"))
m1<-paste(file_split$NA..29, file_split$NA..33,sep=";")

m2<-paste(file_split$NA..42, file_split$NA..46,sep=";")

m3<-paste(file_split$NA..55, file_split$NA..59,sep=";")

m4<-paste(file_split$NA..68, file_split$NA..72,sep=";")

m5<-paste(file_split$NA..81, file_split$NA..85,sep=";")

m6<-paste(file_split$NA..94, file_split$NA..98,sep=";")

m7<-paste(file_split$NA..107, file_split$NA..111,sep=";")

m8<-paste(file_split$NA..120, file_split$NA..124,sep=";")

m9<-paste(file_split$NA..133, file_split$NA..137,sep=";")

m10<-paste(file_split$NA..146, file_split$NA..150,sep=";")

m11<-paste(file_split$NA..159, file_split$NA..163,sep=";")

m12<-paste(file_split$NA..172, file_split$NA..176,sep=";")

m13<-paste(file_split$NA..185, file_split$NA..189,sep=";")

m14<-paste(file_split$NA..198, file_split$NA..202,sep=";")

m15<-paste(file_split$NA..211, file_split$NA..215,sep=";")

sul<-as.list(rbind(c(m1,m2,m3,m4,m5,m6, m7, m8,m9,m10,m11,m12,m13,m14,m15)))
sul<-list2DF(sul)
sul<-t(sul)
sul<-data.frame(sul)

#sul2

url <- "https://monitoramento.preserve.rio.br/monitoramento/monitoramento.php?action=2&id=11"
h1 <- read_html(url)

a<- html_text (h1,"table table-sm table-responsive-sm justify-content-center")

a<-as.data.frame(a)

file_split = data.frame(a,reshape::colsplit(a$a,split="\n",names="buffer"))
m1<-paste(file_split$NA..29, file_split$NA..33,sep=";")

m2<-paste(file_split$NA..42, file_split$NA..46,sep=";")

m3<-paste(file_split$NA..55, file_split$NA..59,sep=";")

m4<-paste(file_split$NA..68, file_split$NA..72,sep=";")

m5<-paste(file_split$NA..81, file_split$NA..85,sep=";")

m6<-paste(file_split$NA..94, file_split$NA..98,sep=";")

m7<-paste(file_split$NA..107, file_split$NA..111,sep=";")

m8<-paste(file_split$NA..120, file_split$NA..124,sep=";")

m9<-paste(file_split$NA..133, file_split$NA..137,sep=";")

m10<-paste(file_split$NA..146, file_split$NA..150,sep=";")



sul2<-as.list(rbind(c(m1,m2,m3,m4,m5,m6, m7, m8,m9,m10)))
sul2<-list2DF(sul2)
sul2<-t(sul2)
sul2<-data.frame(sul2)


serrana = data.frame(serrana$serrana,reshape::colsplit(serrana$serrana,split=";",names="buffer"))
serrana2 = data.frame(serrana2$serrana2,reshape::colsplit(serrana2$serrana2,split=";",names="buffer"))
sul = data.frame(sul$sul,reshape::colsplit(sul$sul,split=";",names="buffer"))
sul2 = data.frame(sul2$sul2,reshape::colsplit(sul2$sul2,split=";",names="buffer"))
noroeste = data.frame(noroeste$noroeste,reshape::colsplit(noroeste$noroeste,split=";",names="buffer"))
norte = data.frame(norte$norte,reshape::colsplit(norte$norte,split=";",names="buffer"))
metro = data.frame(metro$metro,reshape::colsplit(metro$metro,split=";",names="buffer"))
cv = data.frame(cv$cv,reshape::colsplit(cv$cv,split=";",names="buffer"))
capital = data.frame(capital$capital,reshape::colsplit(capital$capital,split=";",names="buffer"))
litoranea = data.frame(litoranea$litoranea,reshape::colsplit(litoranea$litoranea,split=";",names="buffer"))
baixada = data.frame(baixada$baixada,reshape::colsplit(baixada$baixada,split=";",names="buffer"))


sul$regiao<-"sul"
sul2$regiao<-"sul2"
serrana$regiao<-"serrana"
serrana2$regiao<-"serrana2"
noroeste$regiao<-"noroeste"
norte$regiao<-"norte"
metro$regiao<-"metro"
cv$regiao<-"cv"
capital$regiao<-"capital"
litoranea$regiao<-"litoranea"
baixada$regiao<-"baixada"



a<-dplyr::full_join(sul, sul2)
a<-dplyr::full_join(a, serrana)
a<-dplyr::full_join(a, serrana2)
a<-dplyr::full_join(a, noroeste)
a<-dplyr::full_join(a, norte)
a<-dplyr::full_join(a, metro)
a<-dplyr::full_join(a, cv)
a<-dplyr::full_join(a, capital)
a<-dplyr::full_join(a, litoranea)
a<-dplyr::full_join(a, baixada)

a$sul.sul<-NULL
a$sul2.sul2<-NULL
a$serrana.serrana<-NULL
a$serrana2.serrana2<-NULL
a$noroeste.noroeste<-NULL
a$norte.norte<-NULL
a$metro.metro<-NULL
a$cv.cv<-NULL
a$capital.capital<-NULL
a$litoranea.litoranea<-NULL
a$baixada.baixada<-NULL


colnames(a)<-c("Município", "Risco_Hidrologico","Regiao_REDEC")
a$Risco_Hidrologico<-stringr::str_replace(a$Risco_Hidrologico,"Risco:","")
a$Risco_Hidrologico<-stringr::str_replace(a$Risco_Hidrologico," ","")

risco_hidro<-a


# risco geo


## Carregando pacotes exigidos: xml2

#regiao baixada 1

url <- "https://monitoramento.preserve.rio.br/monitoramento/monitoramento.php?action=1&id=1"
h1 <- read_html(url)

a<- html_text (h1,"table table-sm table-responsive-sm justify-content-center")

a<-as.data.frame(a)

file_split = data.frame(a,reshape::colsplit(a$a,split="\n",names="buffer"))

m1<-paste(file_split$NA..29, file_split$NA..33,sep=";")

m2<-paste(file_split$NA..42, file_split$NA..46,sep=";")

m3<-paste(file_split$NA..55, file_split$NA..59,sep=";")

m4<-paste(file_split$NA..68, file_split$NA..72,sep=";")

m5<-paste(file_split$NA..81, file_split$NA..85,sep=";")

m6<-paste(file_split$NA..94, file_split$NA..98,sep=";")

m7<-paste(file_split$NA..107, file_split$NA..111,sep=";")

m8<-paste(file_split$NA..120, file_split$NA..124,sep=";")


baixada<-as.list(rbind(c(m1,m2,m3,m4,m5,m6,m7,m8)))
baixada<-list2DF(baixada)
baixada<-t(baixada)
baixada<-data.frame(baixada)




## Carregando pacotes exigidos: xml2

#regiao litoranea

url <- "https://monitoramento.preserve.rio.br/monitoramento/monitoramento.php?action=1&id=2"
h1 <- read_html(url)

a<- html_text (h1,"table table-sm table-responsive-sm justify-content-center")

a<-as.data.frame(a)

file_split = data.frame(a,reshape::colsplit(a$a,split="\n",names="buffer"))

m1<-paste(file_split$NA..29, file_split$NA..33,sep=";")

m2<-paste(file_split$NA..42, file_split$NA..46,sep=";")

m3<-paste(file_split$NA..55, file_split$NA..59,sep=";")

m4<-paste(file_split$NA..68, file_split$NA..72,sep=";")

m5<-paste(file_split$NA..81, file_split$NA..85,sep=";")

m6<-paste(file_split$NA..94, file_split$NA..98,sep=";")

m7<-paste(file_split$NA..107, file_split$NA..111,sep=";")

m8<-paste(file_split$NA..120, file_split$NA..124,sep=";")

m9<-paste(file_split$NA..133, file_split$NA..137,sep=";")

m10<-paste(file_split$NA..146, file_split$NA..150,sep=";")

m11<-paste(file_split$NA..159, file_split$NA..163,sep=";")

m12<-paste(file_split$NA..172, file_split$NA..176,sep=";")

litoranea<-as.list(rbind(c(m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,m11,m12)))
litoranea<-list2DF(litoranea)
litoranea<-t(litoranea)
litoranea<-data.frame(litoranea)

#capital


url <- "https://monitoramento.preserve.rio.br/monitoramento/monitoramento.php?action=1&id=3"
h1 <- read_html(url)

a<- html_text (h1,"table table-sm table-responsive-sm justify-content-center")

a<-as.data.frame(a)

file_split = data.frame(a,reshape::colsplit(a$a,split="\n",names="buffer"))

m1<-paste(file_split$NA..29, file_split$NA..33,sep=";")
capital<-list2DF(as.list(m1))
capital<-t(capital)
capital<-data.frame(capital)



## Carregando pacotes exigidos: xml2

#costa verde

url <- "https://monitoramento.preserve.rio.br/monitoramento/monitoramento.php?action=1&id=4"
h1 <- read_html(url)

a<- html_text (h1,"table table-sm table-responsive-sm justify-content-center")

a<-as.data.frame(a)

file_split = data.frame(a,reshape::colsplit(a$a,split="\n",names="buffer"))

m1<-paste(file_split$NA..29, file_split$NA..33,sep=";")

m2<-paste(file_split$NA..42, file_split$NA..46,sep=";")

m3<-paste(file_split$NA..55, file_split$NA..59,sep=";")



cv<-as.list(rbind(c(m1,m2,m3)))
cv<-list2DF(cv)
cv<-t(cv)
cv<-data.frame(cv)


#metro

url <- "https://monitoramento.preserve.rio.br/monitoramento/monitoramento.php?action=1&id=5"
h1 <- read_html(url)

a<- html_text (h1,"table table-sm table-responsive-sm justify-content-center")

a<-as.data.frame(a)

file_split = data.frame(a,reshape::colsplit(a$a,split="\n",names="buffer"))

m1<-paste(file_split$NA..29, file_split$NA..33,sep=";")

m2<-paste(file_split$NA..42, file_split$NA..46,sep=";")

m3<-paste(file_split$NA..55, file_split$NA..59,sep=";")

m4<-paste(file_split$NA..68, file_split$NA..72,sep=";")

m5<-paste(file_split$NA..81, file_split$NA..85,sep=";")

m6<-paste(file_split$NA..94, file_split$NA..98,sep=";")


metro<-as.list(rbind(c(m1,m2,m3,m4,m5,m6)))
metro<-list2DF(metro)
metro<-t(metro)
metro<-data.frame(metro)

#regiao norte

url <- "https://monitoramento.preserve.rio.br/monitoramento/monitoramento.php?action=1&id=6"
h1 <- read_html(url)

a<- html_text (h1,"table table-sm table-responsive-sm justify-content-center")

a<-as.data.frame(a)

file_split = data.frame(a,reshape::colsplit(a$a,split="\n",names="buffer"))

m1<-paste(file_split$NA..29, file_split$NA..33,sep=";")

m2<-paste(file_split$NA..42, file_split$NA..46,sep=";")

m3<-paste(file_split$NA..55, file_split$NA..59,sep=";")

m4<-paste(file_split$NA..68, file_split$NA..72,sep=";")

m5<-paste(file_split$NA..81, file_split$NA..85,sep=";")

m6<-paste(file_split$NA..94, file_split$NA..98,sep=";")


norte<-as.list(rbind(c(m1,m2,m3,m4,m5,m6)))
norte<-list2DF(norte)
norte<-t(norte)
norte<-data.frame(norte)


#regiao Noroeste

url <- "https://monitoramento.preserve.rio.br/monitoramento/monitoramento.php?action=1&id=7"
h1 <- read_html(url)

a<- html_text (h1,"table table-sm table-responsive-sm justify-content-center")

a<-as.data.frame(a)

file_split = data.frame(a,reshape::colsplit(a$a,split="\n",names="buffer"))
m1<-paste(file_split$NA..29, file_split$NA..33,sep=";")

m2<-paste(file_split$NA..42, file_split$NA..46,sep=";")

m3<-paste(file_split$NA..55, file_split$NA..59,sep=";")

m4<-paste(file_split$NA..68, file_split$NA..72,sep=";")

m5<-paste(file_split$NA..81, file_split$NA..85,sep=";")

m6<-paste(file_split$NA..94, file_split$NA..98,sep=";")

m7<-paste(file_split$NA..107, file_split$NA..111,sep=";")

m8<-paste(file_split$NA..120, file_split$NA..124,sep=";")

m9<-paste(file_split$NA..133, file_split$NA..137,sep=";")

m10<-paste(file_split$NA..146, file_split$NA..150,sep=";")

m11<-paste(file_split$NA..159, file_split$NA..163,sep=";")

m12<-paste(file_split$NA..172, file_split$NA..176,sep=";")

m13<-paste(file_split$NA..185, file_split$NA..189,sep=";")

m14<-paste(file_split$NA..198, file_split$NA..202,sep=";")

m15<-paste(file_split$NA..211, file_split$NA..215,sep=";")

noroeste<-as.list(rbind(c(m1,m2,m3,m4,m5,m6, m7, m8,m9,m10,m11,m12,m13,m14,m15)))
noroeste<-list2DF(noroeste)
noroeste<-t(noroeste)
noroeste<-data.frame(noroeste)



#regiao Serrana

url <- "https://monitoramento.preserve.rio.br/monitoramento/monitoramento.php?action=1&id=8"
h1 <- read_html(url)

a<- html_text (h1,"table table-sm table-responsive-sm justify-content-center")

a<-as.data.frame(a)

file_split = data.frame(a,reshape::colsplit(a$a,split="\n",names="buffer"))
m1<-paste(file_split$NA..29, file_split$NA..33,sep=";")

m2<-paste(file_split$NA..42, file_split$NA..46,sep=";")

m3<-paste(file_split$NA..55, file_split$NA..59,sep=";")

m4<-paste(file_split$NA..68, file_split$NA..72,sep=";")

m5<-paste(file_split$NA..81, file_split$NA..85,sep=";")

m6<-paste(file_split$NA..94, file_split$NA..98,sep=";")

m7<-paste(file_split$NA..107, file_split$NA..111,sep=";")




serrana<-as.list(rbind(c(m1,m2,m3,m4,m5,m6, m7)))
serrana<-list2DF(serrana)
serrana<-t(serrana)
serrana<-data.frame(serrana)




#regiao Serrana2

url <- "https://monitoramento.preserve.rio.br/monitoramento/monitoramento.php?action=1&id=9"
h1 <- read_html(url)

a<- html_text (h1,"table table-sm table-responsive-sm justify-content-center")

a<-as.data.frame(a)

file_split = data.frame(a,reshape::colsplit(a$a,split="\n",names="buffer"))
m1<-paste(file_split$NA..29, file_split$NA..33,sep=";")

m2<-paste(file_split$NA..42, file_split$NA..46,sep=";")

m3<-paste(file_split$NA..55, file_split$NA..59,sep=";")

m4<-paste(file_split$NA..68, file_split$NA..72,sep=";")

m5<-paste(file_split$NA..81, file_split$NA..85,sep=";")

m6<-paste(file_split$NA..94, file_split$NA..98,sep=";")

m7<-paste(file_split$NA..107, file_split$NA..111,sep=";")

m8<-paste(file_split$NA..120, file_split$NA..124,sep=";")

m9<-paste(file_split$NA..133, file_split$NA..137,sep=";")


serrana2<-as.list(rbind(c(m1,m2,m3,m4,m5,m6, m7,m8,m9)))
serrana2<-list2DF(serrana2)
serrana2<-t(serrana2)
serrana2<-data.frame(serrana2)



#regiao sul

url <- "https://monitoramento.preserve.rio.br/monitoramento/monitoramento.php?action=1&id=10"
h1 <- read_html(url)

a<- html_text (h1,"table table-sm table-responsive-sm justify-content-center")

a<-as.data.frame(a)

file_split = data.frame(a,reshape::colsplit(a$a,split="\n",names="buffer"))
m1<-paste(file_split$NA..29, file_split$NA..33,sep=";")

m2<-paste(file_split$NA..42, file_split$NA..46,sep=";")

m3<-paste(file_split$NA..55, file_split$NA..59,sep=";")

m4<-paste(file_split$NA..68, file_split$NA..72,sep=";")

m5<-paste(file_split$NA..81, file_split$NA..85,sep=";")

m6<-paste(file_split$NA..94, file_split$NA..98,sep=";")

m7<-paste(file_split$NA..107, file_split$NA..111,sep=";")

m8<-paste(file_split$NA..120, file_split$NA..124,sep=";")

m9<-paste(file_split$NA..133, file_split$NA..137,sep=";")

m10<-paste(file_split$NA..146, file_split$NA..150,sep=";")

m11<-paste(file_split$NA..159, file_split$NA..163,sep=";")

m12<-paste(file_split$NA..172, file_split$NA..176,sep=";")

m13<-paste(file_split$NA..185, file_split$NA..189,sep=";")

m14<-paste(file_split$NA..198, file_split$NA..202,sep=";")

m15<-paste(file_split$NA..211, file_split$NA..215,sep=";")

sul<-as.list(rbind(c(m1,m2,m3,m4,m5,m6, m7, m8,m9,m10,m11,m12,m13,m14,m15)))
sul<-list2DF(sul)
sul<-t(sul)
sul<-data.frame(sul)

#sul2

url <- "https://monitoramento.preserve.rio.br/monitoramento/monitoramento.php?action=1&id=11"
h1 <- read_html(url)

a<- html_text (h1,"table table-sm table-responsive-sm justify-content-center")

a<-as.data.frame(a)

file_split = data.frame(a,reshape::colsplit(a$a,split="\n",names="buffer"))
m1<-paste(file_split$NA..29, file_split$NA..33,sep=";")

m2<-paste(file_split$NA..42, file_split$NA..46,sep=";")

m3<-paste(file_split$NA..55, file_split$NA..59,sep=";")

m4<-paste(file_split$NA..68, file_split$NA..72,sep=";")

m5<-paste(file_split$NA..81, file_split$NA..85,sep=";")

m6<-paste(file_split$NA..94, file_split$NA..98,sep=";")

m7<-paste(file_split$NA..107, file_split$NA..111,sep=";")

m8<-paste(file_split$NA..120, file_split$NA..124,sep=";")

m9<-paste(file_split$NA..133, file_split$NA..137,sep=";")

m10<-paste(file_split$NA..146, file_split$NA..150,sep=";")



sul2<-as.list(rbind(c(m1,m2,m3,m4,m5,m6, m7, m8,m9,m10)))
sul2<-list2DF(sul2)
sul2<-t(sul2)
sul2<-data.frame(sul2)


serrana = data.frame(serrana$serrana,reshape::colsplit(serrana$serrana,split=";",names="buffer"))
serrana2 = data.frame(serrana2$serrana2,reshape::colsplit(serrana2$serrana2,split=";",names="buffer"))
sul = data.frame(sul$sul,reshape::colsplit(sul$sul,split=";",names="buffer"))
sul2 = data.frame(sul2$sul2,reshape::colsplit(sul2$sul2,split=";",names="buffer"))
noroeste = data.frame(noroeste$noroeste,reshape::colsplit(noroeste$noroeste,split=";",names="buffer"))
norte = data.frame(norte$norte,reshape::colsplit(norte$norte,split=";",names="buffer"))
metro = data.frame(metro$metro,reshape::colsplit(metro$metro,split=";",names="buffer"))
cv = data.frame(cv$cv,reshape::colsplit(cv$cv,split=";",names="buffer"))
capital = data.frame(capital$capital,reshape::colsplit(capital$capital,split=";",names="buffer"))
litoranea = data.frame(litoranea$litoranea,reshape::colsplit(litoranea$litoranea,split=";",names="buffer"))
baixada = data.frame(baixada$baixada,reshape::colsplit(baixada$baixada,split=";",names="buffer"))


sul$regiao<-"sul"
sul2$regiao<-"sul2"
serrana$regiao<-"serrana"
serrana2$regiao<-"serrana2"
noroeste$regiao<-"noroeste"
norte$regiao<-"norte"
metro$regiao<-"metro"
cv$regiao<-"cv"
capital$regiao<-"capital"
litoranea$regiao<-"litoranea"
baixada$regiao<-"baixada"



a<-dplyr::full_join(sul, sul2)
a<-dplyr::full_join(a, serrana)
a<-dplyr::full_join(a, serrana2)
a<-dplyr::full_join(a, noroeste)
a<-dplyr::full_join(a, norte)
a<-dplyr::full_join(a, metro)
a<-dplyr::full_join(a, cv)
a<-dplyr::full_join(a, capital)
a<-dplyr::full_join(a, litoranea)
a<-dplyr::full_join(a, baixada)

a$sul.sul<-NULL
a$sul2.sul2<-NULL
a$serrana.serrana<-NULL
a$serrana2.serrana2<-NULL
a$noroeste.noroeste<-NULL
a$norte.norte<-NULL
a$metro.metro<-NULL
a$cv.cv<-NULL
a$capital.capital<-NULL
a$litoranea.litoranea<-NULL
a$baixada.baixada<-NULL

colnames(a)<-c("Município", "Risco_Geologico","Regiao_REDEC")
a$Risco_Geologico<-stringr::str_replace(a$Risco_Geologico,"Risco:","")
a$Risco_Geologico<-stringr::str_replace(a$Risco_Geologico," ","")

risco_geo<-a



library(sf)
library(maptools)
library(tmap)
library(XML)
library(cartogram)


shape2 <-st_read("https://raw.githubusercontent.com/tbrugz/geodata-br/master/geojson/geojs-33-mun.json")

a<-NULL
baixada<-NULL
capital<-NULL
file_split<-NULL
h1<-NULL
litoranea<-NULL
metro<-NULL
noroeste<-NULL
norte<-NULL
serrana<-NULL
serrana2<-NULL
sul<-NULL
sul2<-NULL
cv<-NULL


risco_geo$GEOCOD<-risco_geo$Município

rm_accent <- function(str,pattern="all") {
  if(!is.character(str))
    str <- as.character(str)
  pattern <- unique(pattern)
  if(any(pattern=="Ç"))
    pattern[pattern=="Ç"] <- "ç"
  symbols <- c(
    acute = "áéíóúÁÉÍÓÚýÝ",
    grave = "àèìòùÀÈÌÒÙ",
    circunflex = "âêîôûÂÊÎÔÛ",
    tilde = "ãõÃÕñÑ",
    umlaut = "äëïöüÄËÏÖÜÿ",
    cedil = "çÇ"
  )
  nudeSymbols <- c(
    acute = "aeiouAEIOUyY",
    grave = "aeiouAEIOU",
    circunflex = "aeiouAEIOU",
    tilde = "aoAOnN",
    umlaut = "aeiouAEIOUy",
    cedil = "cC"
  )
  accentTypes <- c("´","`","^","~","¨","ç")
  if(any(c("all","al","a","todos","t","to","tod","todo")%in%pattern)) # opcao retirar todos
    return(chartr(paste(symbols, collapse=""), paste(nudeSymbols, collapse=""), str))
  for(i in which(accentTypes%in%pattern))
    str <- chartr(symbols[i],nudeSymbols[i], str)
  return(str)
}
risco_geo$GEOCOD<-rm_accent(risco_geo$Município)
risco_geo$GEOCOD<-stringr::str_remove_all(risco_geo$GEOCOD,"                             ")

risco_geo$GEOCOD<-recode_factor(risco_geo$GEOCOD, "ANGRA DOS REIS"="3300100",
                                "APERIBE"="3300159",
                                "ARARUAMA"="3300209",
                                "AREAL"="3300225","Areal"="3300225",
                                "ARMACAO DOS BUZIOS"="3300233",
                                "ARRAIAL DO CABO"="3300258",
                                "BARRA DO PIRAI"="3300308",
                                "BARRA MANSA"="3300407","barra mansa"="3300407",
                                "BELFORD ROXO"="3300456",
                                "BOM JARDIM"="3300506",
                                "BOM JESUS DO ITABAPOANA"="3300605",
                                "CABO FRIO"="3300704",
                                "CACHOEIRAS DE MACACU"="3300803",
                                "CAMBUCI"="3300902",
                                "CARAPEBUS"="3300936",
                                "COMENDADOR LEVY GASPARIAN"="3300951",
                                "CAMPOS DOS GOYTACAZES"="3301009",
                                "CANTAGALO"="3301108",
                                "CARDOSO MOREIRA"="3301157",
                                "CARMO"="3301207",
                                "CASIMIRO DE ABREU"="3301306",
                                "CONCEICAO DE MACABU"="3301405",
                                "CORDEIRO"="3301504",
                                "DUAS BARRAS"="3301603",
                                "DUQUE DE CAXIAS"="3301702","Duque de Caxias"="3301702",
                                "ENGENHEIRO PAULO DE FRONTIN"="3301801",
                                "GUAPIMIRIM"="3301850",
                                "IGUABA GRANDE"="3301876","Iguaba Grande"="3301876",
                                "ITABORAI"="3301900",
                                "ITAGUAI"="3302007",
                                "ITALVA"="3302056",
                                "ITAOCARA"="3302106",
                                "ITAPERUNA"="3302205",
                                "ITATIAIA"="3302254",
                                "JAPERI"="3302270",
                                "LAJE DO MURIAE"="3302304",
                                "MACAE"="3302403",
                                "MACUCO"="3302452",
                                "MAGE"="3302502",
                                "MANGARATIBA"="3302601",
                                "MARICA"="3302700",
                                "MENDES"="3302809",
                                "MESQUITA"="3302858",
                                "MIGUEL PEREIRA"="3302908",
                                "MIRACEMA"="3303005",
                                "NATIVIDADE"="3303104",
                                "NILOPOLIS"="3303203",
                                "NITEROI"="3303302",
                                "NOVA FRIBURGO"="3303401",
                                "NOVA IGUACU"="3303500",
                                "PARACAMBI"="3303609",
                                "PARAIBA DO SUL"="3303708","Paraiba do Sul"="3303708",
                                "PARATY"="3303807","PARATI"="3303807",
                                "PATY DO ALFERES"="3303856",
                                "PETROPOLIS"="3303906",
                                "PINHEIRAL"="3303955",
                                "PIRAI"="3304003",
                                "PORCIUNCULA"="3304102",
                                "PORTO REAL"="3304110",
                                "QUATIS"="3304128",
                                "QUEIMADOS"="3304144",
                                "QUISSAMA"="3304151",
                                "RESENDE"="3304201",
                                "RIO BONITO"="3304300",
                                "RIO CLARO"="3304409",
                                "RIO DAS FLORES"="3304508",
                                "RIO DAS OSTRAS"="3304524",
                                "RIO DE JANEIRO"="3304557","Rio de Janeiro"="3304557",
                                "SANTA MARIA MADALENA"="3304607",
                                "SANTO ANTONIO DE PADUA"="3304706",
                                "SAO FRANCISCO DE ITABAPOANA"="3304755",
                                "SAO FIDELIS"="3304805",
                                "SAO GONCALO"="3304904",
                                "SAO JOAO DA BARRA"="3305000",
                                "SAO JOAO DE MERITI"="3305109",
                                "SAO JOSE DE UBA"="3305133",
                                "SAO JOSE DO VALE DO RIO PRETO"="3305158",
                                "SAO PEDRO DA ALDEIA"="3305208",
                                "SAO SEBASTIAO DO ALTO"="3305307",
                                "SAPUCAIA"="3305406",
                                "SAQUAREMA"="3305505",
                                "SEROPEDICA"="3305554",
                                "SILVA JARDIM"="3305604",
                                "SUMIDOURO"="3305703",
                                "TANGUA"="3305752",
                                "TERESOPOLIS"="3305802",
                                "TRAJANO DE MORAES"="3305901",
                                "TRES RIOS"="3306008",
                                "VALENCA"="3306107",
                                "VARRE-SAI"="3306156",
                                "VASSOURAS"="3306206",
                                "VOLTA REDONDA"="3306305")



risco_hidro$GEOCOD<-risco_hidro$Município

risco_hidro$GEOCOD<-rm_accent(risco_hidro$Município)
risco_hidro$GEOCOD<-stringr::str_remove_all(risco_hidro$GEOCOD,"                             ")


risco_hidro$GEOCOD<-recode_factor(risco_hidro$GEOCOD, "ANGRA DOS REIS"="3300100",
                                  "APERIBE"="3300159",
                                  "ARARUAMA"="3300209",
                                  "AREAL"="3300225","Areal"="3300225",
                                  "ARMACAO DOS BUZIOS"="3300233",
                                  "ARRAIAL DO CABO"="3300258",
                                  "BARRA DO PIRAI"="3300308",
                                  "BARRA MANSA"="3300407","barra mansa"="3300407",
                                  "BELFORD ROXO"="3300456",
                                  "BOM JARDIM"="3300506",
                                  "BOM JESUS DO ITABAPOANA"="3300605",
                                  "CABO FRIO"="3300704",
                                  "CACHOEIRAS DE MACACU"="3300803",
                                  "CAMBUCI"="3300902",
                                  "CARAPEBUS"="3300936",
                                  "COMENDADOR LEVY GASPARIAN"="3300951",
                                  "CAMPOS DOS GOYTACAZES"="3301009",
                                  "CANTAGALO"="3301108",
                                  "CARDOSO MOREIRA"="3301157",
                                  "CARMO"="3301207",
                                  "CASIMIRO DE ABREU"="3301306",
                                  "CONCEICAO DE MACABU"="3301405",
                                  "CORDEIRO"="3301504",
                                  "DUAS BARRAS"="3301603",
                                  "DUQUE DE CAXIAS"="3301702","Duque de Caxias"="3301702",
                                  "ENGENHEIRO PAULO DE FRONTIN"="3301801",
                                  "GUAPIMIRIM"="3301850",
                                  "IGUABA GRANDE"="3301876","Iguaba Grande"="3301876",
                                  "ITABORAI"="3301900",
                                  "ITAGUAI"="3302007",
                                  "ITALVA"="3302056",
                                  "ITAOCARA"="3302106",
                                  "ITAPERUNA"="3302205",
                                  "ITATIAIA"="3302254",
                                  "JAPERI"="3302270",
                                  "LAJE DO MURIAE"="3302304",
                                  "MACAE"="3302403",
                                  "MACUCO"="3302452",
                                  "MAGE"="3302502",
                                  "MANGARATIBA"="3302601",
                                  "MARICA"="3302700",
                                  "MENDES"="3302809",
                                  "MESQUITA"="3302858",
                                  "MIGUEL PEREIRA"="3302908",
                                  "MIRACEMA"="3303005",
                                  "NATIVIDADE"="3303104",
                                  "NILOPOLIS"="3303203",
                                  "NITEROI"="3303302",
                                  "NOVA FRIBURGO"="3303401",
                                  "NOVA IGUACU"="3303500",
                                  "PARACAMBI"="3303609",
                                  "PARAIBA DO SUL"="3303708","Paraiba do Sul"="3303708",
                                  "PARATY"="3303807","PARATI"="3303807",
                                  "PATY DO ALFERES"="3303856",
                                  "PETROPOLIS"="3303906",
                                  "PINHEIRAL"="3303955",
                                  "PIRAI"="3304003",
                                  "PORCIUNCULA"="3304102",
                                  "PORTO REAL"="3304110",
                                  "QUATIS"="3304128",
                                  "QUEIMADOS"="3304144",
                                  "QUISSAMA"="3304151",
                                  "RESENDE"="3304201",
                                  "RIO BONITO"="3304300",
                                  "RIO CLARO"="3304409",
                                  "RIO DAS FLORES"="3304508",
                                  "RIO DAS OSTRAS"="3304524",
                                  "RIO DE JANEIRO"="3304557","Rio de Janeiro"="3304557",
                                  "SANTA MARIA MADALENA"="3304607",
                                  "SANTO ANTONIO DE PADUA"="3304706",
                                  "SAO FRANCISCO DE ITABAPOANA"="3304755",
                                  "SAO FIDELIS"="3304805",
                                  "SAO GONCALO"="3304904",
                                  "SAO JOAO DA BARRA"="3305000",
                                  "SAO JOAO DE MERITI"="3305109",
                                  "SAO JOSE DE UBA"="3305133",
                                  "SAO JOSE DO VALE DO RIO PRETO"="3305158",
                                  "SAO PEDRO DA ALDEIA"="3305208",
                                  "SAO SEBASTIAO DO ALTO"="3305307",
                                  "SAPUCAIA"="3305406",
                                  "SAQUAREMA"="3305505",
                                  "SEROPEDICA"="3305554",
                                  "SILVA JARDIM"="3305604",
                                  "SUMIDOURO"="3305703",
                                  "TANGUA"="3305752",
                                  "TERESOPOLIS"="3305802",
                                  "TRAJANO DE MORAES"="3305901",
                                  "TRES RIOS"="3306008",
                                  "VALENCA"="3306107",
                                  "VARRE-SAI"="3306156",
                                  "VASSOURAS"="3306206",
                                  "VOLTA REDONDA"="3306305")


desastre<- merge(risco_geo,risco_hidro, by="GEOCOD")
desastre$Município.x<-stringr::str_replace_all(desastre$Município.x," ","")
desastre<-dplyr::arrange(desastre,desastre$Município.x)

shape2$GEOCOD<- shape2$id
shape3<-merge(shape2,desastre,by="GEOCOD")

#shape3<-st_join(shape2,shape3)

paleta<-c("green4","yellow1","darkorange1","red2","purple3")

desastre$Risco_Geologico<-stringr::str_replace_all(desastre$Risco_Geologico," ","")
desastre$Risco_Hidrologico<-stringr::str_replace_all(desastre$Risco_Hidrologico," ","")
shape3<-st_as_sf(shape3)

shape3$Risco_Geologico<-stringr::str_replace_all(shape3$Risco_Geologico," ","")
table(shape3$Risco_Geologico)
shape3$Risco_Geologico_n<-NA
shape3$Risco_Geologico_n[shape3$Risco_Geologico=="MUITOBAIXO"]<-0

shape3$Risco_Geologico_n[shape3$Risco_Geologico=="BAIXO"]<-1

shape3$Risco_Geologico_n[shape3$Risco_Geologico=="MODERADO"]<-2

shape3$Risco_Geologico_n[shape3$Risco_Geologico=="ALTO"]<-3
shape3$Risco_Geologico_n[shape3$Risco_Geologico=="MUITOALTO"]<-4


shape3$Risco_Hidrologico<-stringr::str_replace_all(shape3$Risco_Hidrologico," ","")
table(shape3$Risco_Hidrologico)
shape3$Risco_Hidrologico_n<-NA
shape3$Risco_Hidrologico_n[shape3$Risco_Hidrologico=="MUITOBAIXO"]<-0

shape3$Risco_Hidrologico_n[shape3$Risco_Hidrologico=="BAIXO"]<-1

shape3$Risco_Hidrologico_n[shape3$Risco_Hidrologico=="MODERADO"]<-2

shape3$Risco_Hidrologico_n[shape3$Risco_Hidrologico=="ALTO"]<-3
shape3$Risco_Hidrologico_n[shape3$Risco_Hidrologico=="MUITOALTO"]<-4





ui <- fluidPage(
  
  h1("Mapa de Riscos para Desastres"),
  
  h2("Risco Hidrológico"),
  plotOutput("map2",height=2000, width =1000),
  h4("Fonte: Defesa Civil"),
  
  h2("Risco Geológico"),
  plotOutput("map",height=2000, width =1000),
  h4("Fonte: Defesa Civil"),
  
  h5(paste("Data da coleta de dados no site da defesa civil (https://monitoramento.preserve.rio.br/monitoramento/): ",Sys.time())),
  h4("Por favor aguarde um pouco as imagens serem processadas, os mapas podem demorar entre 40-60 segundos para aparecer a variar dependendo da conexão com a internet, é o tempo necessário de buscar as informações no sítio e renderizar a geolocalização das classificações de risco, elas não aparecerão instantaneamente")
  
  
  
)

server <- function(input, output, session) {
  output$map <- renderPlot({
    tm_shape(shape3) + tm_polygons("Risco_Geologico_n",style = "fixed",breaks = c(0,1,2,3,4,5),
                                   labels=c("Muito baixo","Baixo","Moderado","Alto","Muito alto"),
                                   palette = paleta)+  tm_text("name", size = 3/5,remove.overlap = T,col=viridis::inferno(1))
    
    
  })
  
  output$map2 <- renderPlot({
    tm_shape(shape3) + tm_polygons("Risco_Hidrologico_n",style = "fixed",breaks = c(0,1,2,3,4,5),
                                   labels=c("Muito baixo","Baixo","Moderado","Alto","Muito alto"),
                                   palette = paleta)+  tm_text("name", size = 3/5,remove.overlap = T,col=viridis::inferno(1))
    
    
  })
}

shinyApp(ui, server)