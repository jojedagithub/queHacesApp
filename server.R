library(shiny)

# Define server logic required to run the app
shinyServer(function(input, output) {
    output$serverSel <- renderText({ 
      paste("Has selecionado: '",input$selec,"'")
    })
    output$serverTex <- renderText({ 
      paste("Has escrito: '",input$text,"'")
    })
    output$serverRoi <- renderText({ 
      paste("El rango es: '",paste(input$roi,collapse="' and '"),"'")
    })
  }
)