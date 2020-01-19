library(shiny)
library(shinydashboard)

shinyServer(function(input, output){
  
  output$water_quality <- renderPlot({
    plot(water_quality$`DATE SAMPLED`, water_quality$OTTAWA, ylab = "pH Level", xlab = "Year", main = "pH Level (1998-2017)" )
  })
})