# Library of Babel
# Ashwin Sundar
# March 18 2017
#
# About this app: The Library of Babel is a philosophical construct, first conceived of by Jorge Luis Borges and published in his 1941 short story titled, "The Library of Babel" (https://maskofreason.files.wordpress.com/2011/02/the-library-of-babel-by-jorge-luis-borges.pdf). This vast library contains "all possible 410-page books of a certain format and character set" (https://en.wikipedia.org/wiki/The_Library_of_Babel). This means that "for every sensible line of straightforward statement, there are leagues of senseless cacophonies, verbal jumbles and incoherences". What this also means is that every book, every research article, every patent, every stock market prospectus, everything that has EVER BEEN WRITTEN BY HUMANITY - it exists in this library! You just have to look for it, which may be the epitome of the phrase "easier said than done". 
# Borges sets a few rules for this library. Some of these rules concern the appearance of the actual library, which is awe-inspiring in itself. But for this app, we'll just focus on the contents of the library: 
# 1) Each book is 410 pages long.
# 2) Each page is 40 lines long.
# 3) Each line is 80 characters long.
# To understand what the lower bound of this library is, let's assume characters in a book are restricted to the 26 English letters. There are: 
# > bookCharLength = 410*40*80 # letters per book
# [1] 1312000 # 
# > numOfBooks = 26^bookCharLength # number of possible books
# [1] Inf 
# There are more books than there are numbers that your computer knows about. A lot more. An estimate on Wolfram Alpha (a free mathematical tool) says that the number representing all the possible combinations of books in this library is 1.8 MILLION DIGITS LONG! A number that, if written down, would span nearly 3 miles of paper. For comparison, the largest library in the world, The Library of Congress, contains a palty 8 digit-number worth of books (https://en.wikipedia.org/wiki/Library_of_Congress). Philistines. 
#
# App Intro paragraph: When it was proclaimed that the Library contained all books, the first impression was one of extravagant happiness. All men felt themselves to be the masters of an intact and secret treasure. There was no personal or world problem whose eloquent solution did not exist in some hexagon. The universe was justified, the universe suddenly usurped the unlimited dimensions of hope. At that time a great deal was said about the Vindications: books of apology and prophecy which vindicated for all time the acts of every man in the universe and retained prodigious arcana for his future. Thousands of the greedy abandoned their sweet native hexagons and rushed up the stairways, urged on by the vain intention of finding their Vindication. These pilgrims disputed in the narrow corridors, proferred dark curses, strangled each other on the divine stairways, flung the deceptive books into the air shafts, met their death cast down in a similar fashion by the inhabitants of remote regions. Others went mad ... The Vindications exist (I have seen two which refer to persons of the future, to persons who are perhaps not imaginary) but the searchers did not remember that the possibility of a man's finding his Vindication, or some treacherous variation thereof, can be computed as zero.
# Paragraph 2: At that time it was also hoped that a clarification of humanity's basic mysteries -- the origin of the Library and of time -- might be found. It is verisimilar that these grave mysteries could be explained in words: if the language of philosophers is not sufficient, the multiform Library will have produced the unprecedented language required, with its vocabularies and grammars. For four centuries now men have exhausted the hexagons ... There are official searchers, inquisitors. I have seen them in the performance of their function: they always arrive extremely tired from their journeys; they speak of a broken stairway which almost killed them; they talk with the librarian of galleries and stairs; sometimes they pick up the nearest volume and leaf through it, looking for infamous words. Obviously, no one expects to discover anything.

#### #### #### #### ####
#### Int62 Class ## ####
#### #### #### #### ####
# Because the Library of Babel contains so many books, I need to come up with a new numbering system so I can actually represent the location of each hexagon in a number that isn't 3 miles long. I noticed that the guy at libraryofbabel.info got away with using base 36 for his representation, but still each hexagon location was a number that was about 3000 digits long - a full page of paper basically. Hopefully base 62 is a bit more reasonable.

convertToBase62 <- function(integer){
  # convert decimal to base 62
  
  # return the string representation
}

#### #### #### #### ####
#### #### #### #### ####
# To start, I'm going to create a "Mini Library of Babel". This library will have a much more manageable set of rules that will produce a more finite number of books - a number that my computer knows about at least. 
# Rules: 
# 1) Each book is 1 page long.
# 2) Each page is 1 line long.
# 3) Each line is 6 characters long. 
# 4) We're using the English alphabet, lower-case only. 
# > bookCharLength = 1*1*6
# [1] 10
# Each position can pick from any of the 26 letters. So:
# > 26^6
# [1] 308915776
# A lot of books, but I can represent the location of each of them in decimal digits still. 

# 1) Get users input for the text they're looking for
# 2) 

library(shiny)

# Define UI for application
ui <- shinyUI(fluidPage(
   
   # Application title
   titlePanel("The Library of Babel"),
   
   # Text input for search string
   sidebarLayout(
      sidebarPanel(
         textInput("searchString",
                     "Search for the first instance of the phrase: ",
                     placeholder = "Enter a phrase...",
                     value = "The meaning of life is 42."),
         actionButton("findButton", "Find page")
      ),
      
      # Show a display of the page containing your text
      mainPanel(
         textOutput("pageDisplay")
      )
   )
))


#### #### #### #### ####
## Library Structure ###
#### #### #### #### ####
# Passage (1 - 4)
## Hexagon (1 - N) # This is where the problems begin. There are like an obscenely large number of Hexagons needed to have enough space to hold all these books. You probably should create a special number class to handle this representation. 
### Floor (1 - F)
#### Wall (1 - 4)
##### Shelf (1 - 5)
###### Book (1 - 35)
####### Page (1 - 410)
######## Line (1 - 40)
######### Character (1 - 80)
#### #### #### #### ####
#### #### #### #### ####
#### #### #### #### ####


# Define server logic
server <- shinyServer(function(input, output) {
  observeEvent(input$findButton, { # Monitor the find Button. When it's pressed, do the stuff in brackets.
    output$pageDisplay <- renderText({ 
      # do stuff
    })
  })
})

# Run the application 
shinyApp(ui = ui, server = server)

