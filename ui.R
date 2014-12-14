library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  titlePanel("Ejemplo Shiny App: paso de información"),
  sidebarLayout(
    position="left",
    sidebarPanel(
      "Aquí tenemos algunos Widgets:",
      selectInput("selec", label="Selecciona una opción:",
        choices=c("opt. A","opt. B","opt. C.","opt. D")
        ),
      textInput("text",label="Escribe algo:",),
      sliderInput(
        "roi",
        label="Rango:",
        min=0, max=100,c(25,75)
        )
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      p("Hola qué tal, con esta aplicación quiero que veas cómo se comunica
        el Interfaz de Usuario (UI) con el Servidor."),
      br(),      
      p("Esto es lo que devuel el servidor:"),
      br(),
      p(textOutput("serverSel")),
      br(),
      p(textOutput("serverTex")),
      br(),
      p(textOutput("serverRoi"))
    )
  )
))