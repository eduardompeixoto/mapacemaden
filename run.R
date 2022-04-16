ui <- fluidPage(
    shiny::tags$head(
        tags$style(
            ".tabwid table {margin-left: 0px !important;}"
        )
    ),
    
    fluidRow(
        uiOutput("flex")
    )
)
server <- function(input, output) {
    
    output$flex <- renderUI({
        library(reshape)
        library(rvest)
        ## Carregando pacotes exigidos: xml2
        
        #regiao baixada 1
        
        url <- "https://monitoramento.preserve.rio.br/monitoramento/monitoramento.php?action=1&id=1"
        h1 <- read_html(url)
        
        a<- rvest::html_text (h1,"table table-sm table-responsive-sm justify-content-center")
        
        a<-as.data.frame(a)
        
        file_split = data.frame(a,colsplit(a$a,split="\n",names="buffer"))
        
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
        
        
        library(reshape)
        library(rvest)
        ## Carregando pacotes exigidos: xml2
        
        #regiao litoranea
        
        url <- "https://monitoramento.preserve.rio.br/monitoramento/monitoramento.php?action=1&id=2"
        h1 <- read_html(url)
        
        a<- rvest::html_text (h1,"table table-sm table-responsive-sm justify-content-center")
        
        a<-as.data.frame(a)
        
        file_split = data.frame(a,colsplit(a$a,split="\n",names="buffer"))
        
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
        
        a<- rvest::html_text (h1,"table table-sm table-responsive-sm justify-content-center")
        
        a<-as.data.frame(a)
        
        file_split = data.frame(a,colsplit(a$a,split="\n",names="buffer"))
        
        m1<-paste(file_split$NA..29, file_split$NA..33,sep=";")
        capital<-list2DF(as.list(m1))
        capital<-t(capital)
        capital<-data.frame(capital)
        
        
        library(reshape)
        library(rvest)
        ## Carregando pacotes exigidos: xml2
        
        #costa verde
        
        url <- "https://monitoramento.preserve.rio.br/monitoramento/monitoramento.php?action=1&id=4"
        h1 <- read_html(url)
        
        a<- rvest::html_text (h1,"table table-sm table-responsive-sm justify-content-center")
        
        a<-as.data.frame(a)
        
        file_split = data.frame(a,colsplit(a$a,split="\n",names="buffer"))
        
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
        
        a<- rvest::html_text (h1,"table table-sm table-responsive-sm justify-content-center")
        
        a<-as.data.frame(a)
        
        file_split = data.frame(a,colsplit(a$a,split="\n",names="buffer"))
        
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
        
        a<- rvest::html_text (h1,"table table-sm table-responsive-sm justify-content-center")
        
        a<-as.data.frame(a)
        
        file_split = data.frame(a,colsplit(a$a,split="\n",names="buffer"))
        
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
        
        a<- rvest::html_text (h1,"table table-sm table-responsive-sm justify-content-center")
        
        a<-as.data.frame(a)
        
        file_split = data.frame(a,colsplit(a$a,split="\n",names="buffer"))
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
        
        a<- rvest::html_text (h1,"table table-sm table-responsive-sm justify-content-center")
        
        a<-as.data.frame(a)
        
        file_split = data.frame(a,colsplit(a$a,split="\n",names="buffer"))
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
        
        a<- rvest::html_text (h1,"table table-sm table-responsive-sm justify-content-center")
        
        a<-as.data.frame(a)
        
        file_split = data.frame(a,colsplit(a$a,split="\n",names="buffer"))
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
        
        a<- rvest::html_text (h1,"table table-sm table-responsive-sm justify-content-center")
        
        a<-as.data.frame(a)
        
        file_split = data.frame(a,colsplit(a$a,split="\n",names="buffer"))
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
        
        a<- rvest::html_text (h1,"table table-sm table-responsive-sm justify-content-center")
        
        a<-as.data.frame(a)
        
        file_split = data.frame(a,colsplit(a$a,split="\n",names="buffer"))
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
        
        
        serrana = data.frame(serrana$serrana,colsplit(serrana$serrana,split=";",names="buffer"))
        serrana2 = data.frame(serrana2$serrana2,colsplit(serrana2$serrana2,split=";",names="buffer"))
        sul = data.frame(sul$sul,colsplit(sul$sul,split=";",names="buffer"))
        sul2 = data.frame(sul2$sul2,colsplit(sul2$sul2,split=";",names="buffer"))
        noroeste = data.frame(noroeste$noroeste,colsplit(noroeste$noroeste,split=";",names="buffer"))
        norte = data.frame(norte$norte,colsplit(norte$norte,split=";",names="buffer"))
        metro = data.frame(metro$metro,colsplit(metro$metro,split=";",names="buffer"))
        cv = data.frame(cv$cv,colsplit(cv$cv,split=";",names="buffer"))
        capital = data.frame(capital$capital,colsplit(capital$capital,split=";",names="buffer"))
        litoranea = data.frame(litoranea$litoranea,colsplit(litoranea$litoranea,split=";",names="buffer"))
        baixada = data.frame(baixada$baixada,colsplit(baixada$baixada,split=";",names="buffer"))
        
        
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
        
        require(flextable)
        a<-flextable::flextable(a)
        
        a <- bg(a, i = ~ stringr::str_detect(Risco_Geologico,"BAIXO"), bg = "yellow")
        a <- bg(a, i = ~ stringr::str_detect(Risco_Geologico,"ALTO"), bg = "red")
        a <- bg(a, i = ~ stringr::str_detect(Risco_Geologico,"MUITO BAIXO"), bg = "green")
        a <- bg(a, i = ~ stringr::str_detect(Risco_Geologico,"MODERADO"), bg = "orange")
        a <- bg(a, i = ~ stringr::str_detect(Risco_Geologico,"MUITO ALTO"), bg = "purple")
        
        
        return(a %>%
                   htmltools_value())        
    })
}
shinyApp(ui, server)
