## ui.R ##
library(shiny)
library(shinydashboard)

shinyUI(
  dashboardPage(
    dashboardHeader(title = "Smart Cities"),
    dashboardSidebar(
      sidebarMenu(
        menuItem("Transportation", tabName = "transportation",
                 menuSubItem("Traffic Management", tabName = "traffic")
        ),
        menuItem("Resource Management", tabName = "resource",
                 menuSubItem("Water Quality", tabName = "water"),
                 menuSubItem("Waste Management", tabName = "waste"),
                 menuSubItem("Smart Grid", tabName = "power")
        ),
        menuItem("Carbon Footprint", tabName = "pollution"),
        menuItem("Health", tabName = "health")
      )
    ),
    dashboardBody(
      tabItems(
        tabItem(tabName = "water",
                fluidRow(
                  box(plotOutput("water_quality")),
                  box(checkboxInput("OTTAWA", "Ottawa", TRUE))
                )
        )
      )
    )
  )
)