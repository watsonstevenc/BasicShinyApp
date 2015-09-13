library(shiny)
shinyUI(pageWithSidebar(
    headerPanel("Steven's Marathon App!"), #page title
    sidebarPanel(
      
      h1('Pace Input'), 
      p('Input your running pace in minutes per mile'),

     numericInput('pace', 'pace min/mile', 9, min=4, max=20, step=0.1), #input box 4-20, with a default of 9 and a step of 0.1
     
     submitButton('Submit') #submits entry
      ),
    
    mainPanel(
      h1('Intructions'),
      p('This App will tell you how long it will take you to run a marathon based on the pace you input.'),
      p('To work this App, just select your pace per mile, then hit submit.'),
     
      h4('You entered'), #text
      verbatimTextOutput("inputValue"), #call input value
      h4('Which resulted in a prediction of '), #text
      verbatimTextOutput("prediction") #call prediction value
      )
    ))

#runApp("C:/Users/Steven/Documents/BasicShinyApp")  #this allows the app to run (put in the directory if not in the root)
#library(shinyapps) #this loads the library
#deployApp("C:/Users/Steven/Documents/BasicShinyApp") #this deploys to shinyapps.io
