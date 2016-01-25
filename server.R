#server.R

server <-function(input, output) {
        output$table <-renderDataTable({
                data(mtcars)
                mtcars<-cbind(CarModel=rownames(mtcars),mtcars)
                mtcars[mtcars$mpg>=input$mpg & mtcars$qsec<=input$qsec,]
                
        })
}