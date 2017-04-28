primeFactorAddIn <- function() {
  
  library(shiny)
  library(miniUI)
  
  # Our ui will be a simple gadget page:
  
  ui <- miniPage(
    gadgetTitleBar("Get the Prime Factors of any number!"),
    sidebarPanel(
      numericInput("n", "N:", min = NA, max = NA, value = 50),
      br(),
      actionButton("goButton", "Go!"),
      p("Click the button to update the results displayed in the main panel.")
    ),
    miniContentPanel(
      uiOutput("nText")
      
    )
  )
  

  server <- function(input, output, session) {
    
   
    nPrime <- eventReactive(input$goButton, {
      getPrimeFactors(input$n)
    })

    output$nText <- renderUI({
      p(paste(nPrime(),sep="",collapse=" & "))

    })
    
    observeEvent(input$done, {
    stopApp()
    })
  }
  
  # We'll use a pane viwer, and set the minimum height at
  # 300px to ensure we get enough screen space to display the clock.
  viewer <- paneViewer(300)
  runGadget(ui, server, viewer = viewer)
  
}


# Try running the addin!
#primeFactorAddIn()
