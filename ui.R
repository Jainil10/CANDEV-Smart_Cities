## ui.R ##
library(shiny)
library(shinydashboard)


shinyUI(
  dashboardPage(
    dashboardHeader(title = "Smart Cities"),
    dashboardSidebar(
      sidebarMenu(
        menuItem("Transportation", tabName = "transportation", icon = icon("road"),
                 menuSubItem("Traffic Management", tabName = "traffic")
        ),
        menuItem("Resource Management", tabName = "resource", icon = icon("leaf"),
                 menuSubItem("Water Quality", tabName = "water"),
                 menuSubItem("Waste Management", tabName = "waste"),
                 menuSubItem("Smart Grid", tabName = "power")
        ),
        menuItem("Carbon Footprint", tabName = "pollution"),
        menuItem("Health", tabName = "health"),
        menuItem("Economy", tabName = "economy")
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