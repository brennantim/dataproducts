library(shiny)
shinyUI(pageWithSidebar(
        headerPanel("Predict Your Car's MPG"),
        sidebarPanel(
                checkboxGroupInput("am","Transmission Type",c('Automatic','Manual')),
                numericInput('wt','Weight 1000lbs (min=1,max=6,step=0.5)',0,min=1,max=6,step=0.5),
                numericInput('hp','Horsepower (min=50,max=450,setp=10)',0,min=50,max=450,step=10),
                numericInput('cyl','Cylinders (min=4,max=8,step=2)',0,min=4,max=8,step=2),
                submitButton('Submit')
        ),
        mainPanel(
                h3('Results of prediction'),
                h4('Transmission Type'),
                verbatimTextOutput("id1"),
                h4('Weight 1000lbs'),
                verbatimTextOutput("id2"),
                h4('Horsepower'),
                verbatimTextOutput("id3"),
                h4('Cylinders'),
                verbatimTextOutput("id4"),
                h4('Predicted MPG'),
                verbatimTextOutput("prediction")
        )
)
)
