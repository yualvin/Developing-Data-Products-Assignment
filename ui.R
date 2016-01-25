#ui.R

library(shiny)
ui<-fluidPage(
        titlePanel("Finding a 1/4 Mile Car with Decent MPG"),
        sidebarLayout(
                sidebarPanel(
                        sliderInput(inputId= "mpg",label = "MPG", value = 0, min = 10, max = 33),
                        sliderInput(inputId= "qsec",label = "1/4 Mile Time (seconds)", value = 0, min = 15, max = 23),
                        helpText('For those who are looking for a fast quarter mile car while still getting decent mpg :)
                                 The table filters the available cars from the mtcars dataset that has higher than or 
                                 equivalent MPG AND lower than or equivalent 1/4 mile time that was selected via the 
                                 respective sliders. You can then fine tune your selection by sorting available variables
                                 in ascending/descending order.The variables used for filtering are mpg and qsec respectively.
                                 The ui.R and server.R code on github can be found here (https://github.com/yualvin/Developing-Data-Products-Assignment).')
                ),
                mainPanel("Available Cars",
                          dataTableOutput("table")
                )
        ))