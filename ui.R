library(shiny)
library(ggplot2)
library(mlbench)
data("Glass")

shinyUI(fluidPage(
    
    titlePanel("View the refractive index (RI) properties of glass"),
    
    sidebarLayout(
        sidebarPanel(
            radioButtons("min", "Mineral:", c("Sodium"="Na",
                                              "Magnesium"="Mg",
                                              "Aluminium"="Al",
                                              "Silicon"="Si",
                                              "Potassium"="K",
                                              "Calcium"="Ca",
                                              "Barium"="Ba",
                                              "Iron"="Fe")),
            h4("Documentation:"),
            h6("This app shows how the Refractive Index (RI) of 7 types of glass 
            is influenced by the proportion of eight different mineral 
            elements. Selecting from the list above shows how proportions of 
            each mineral element affects the RI of the glass."),
            h6("The Type denotes the type of oxide of the glass. 6 types are 
               included in the dataset: 1 (70 observations), 2 (76 obs), 
               3 (17 obs), 5 (13 obs), 6 (9 obs) & 7 (29 obs)"),
            h6("This dataset was developed fro criminological purposes; ie to 
               predict the type of glass found at a crime scene.")
        ),
        
        mainPanel(
            h3("Refractive Index by chosen mineral content, by glass type"),
            plotOutput("plot1")
        )
    )
))
