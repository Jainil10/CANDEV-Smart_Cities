## ui.R ##
library(shiny)
library(shinydashboard)

shinyUI(
  dashboardPage(
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
    dashboardBody(
      tabItem(tabName = "water",
              
      )
    )
  )
)