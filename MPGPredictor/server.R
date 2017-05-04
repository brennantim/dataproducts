library(shiny)
library(datasets)


mtcars$am <- as.factor(mtcars$am)
levels(mtcars$am) <- c("Automatic", "Manual")
fit  <- lm(mpg~am + wt + hp + cyl, data = mtcars)

MPG <- function(am, wt, hp, cyl) {
        df.new <- data.frame(am=am, wt=wt, hp=hp, cyl=cyl)
        return(predict(fit, df.new)[[1]])
}

shinyServer(
        function(input,output) {
                output$id1<-renderPrint({input$am})
                output$id2<-renderPrint({input$wt})
                output$id3<-renderPrint({input$hp})
                output$id4<-renderPrint({input$cyl})
                output$prediction<-renderPrint({MPG(input$am,input$wt,input$hp,input$cyl)})
        }
)