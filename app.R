## app.R ##
library(shiny)
library(shinydashboard)

ui <- dashboardPage(
  dashboardHeader(title = "Basic dashboard"),
  dashboardSidebar(
    sidebarMenu(
      menuItem("Transportation", tabName = "transportation",
               menuSubItem("Traffic Management", tabName = "traffic")
      ),
      menuItem("Resource Management", tabName = "resource",
               menuSubItem("Water Management", tabName = "water"),
               menuSubItem("Waste Management", tabName = "waste"),
               menuSubItem("Smart Grid", tabName = "power")
      )
    )
  ),
  dashboardBody()
)

#Server Function
server <- function(input, output) {}

shinyApp(ui, server)