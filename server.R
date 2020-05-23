library(shiny)
library(ggplot2)
library(mlbench)
data("Glass")

shinyServer(function(input, output) {
    
    output$plot1 <- renderPlot ({
        if (input$min=="Na") {qplot(RI,Na,data=Glass,color=Type)}
        else if (input$min=="Mg") {qplot(RI,Mg,data=Glass,color=Type)}
        else if (input$min=="Al") {qplot(RI,Al,data=Glass,color=Type)}
        else if (input$min=="Si") {qplot(RI,Si,data=Glass,color=Type)}
        else if (input$min=="K") {qplot(RI,K,data=Glass,color=Type)}
        else if (input$min=="Ca") {qplot(RI,Ca,data=Glass,color=Type)}
        else if (input$min=="Ba") {qplot(RI,Ba,data=Glass,color=Type)}
        else if (input$min=="Fe") {qplot(RI,Fe,data=Glass,color=Type)}
    })
    
})
