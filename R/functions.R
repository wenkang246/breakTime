BreakTime <- function(){
  print("Time for a break? Let's play a game! (Make sure you get up and stretch too.")
  input1 <- readline(prompt = "1 for Magic 8, 2 for Fortune, or 3 for dice game? ")
    if (input1 == "1") {
     print("I see you've chosen the Magic 8...")
      magic8()
   } else if (input1 == "2") {
     print("A fortune then...")
     fortuneTeller()
   } else if (input1 == "3") {
      print("Ah! A gold old fashioned game of dice.")
     diceGame()
    } else {
       return("Sorry, that's not an option, try again if you want.")
    }
  }


fortuneTeller <- function(){
  list <- c("The fortune you seek is in another program.",
         "A conclusion is simply the place where you got tired of thinking.",
         "The road to riches is paved with homework.",
         "Fortune not found? Abort, Retry, Ignore.",
         "When life give you cookies, share.",
         "It is a good day to have a good day",
         "All fortunes are wrong except this one",
         "Don't let statistics do a number on you.",
         "Avoid taking unnecessary gambles. Lucky numbers: 12, 15, 23, 28, 37",
         "This fortune is 0 calories, and sugar free!",
         "A good time to finish up old tasks.",
         "All the effort you are making will ultimately pay off.",
         "Believe it can be done.",
         "Do not be intimidated by the eloquence of others.",
         "Do not let ambitions overshadow small success.",
         "Every flower blooms in its own sweet time.",
         "Go take a rest; you deserve it.",
         "If they get a haircut and they're ugly, it's a crush, not love.",
         "What is a sauce but a slime with purpose?",
         "The important thing to remember is to not forget.")
  fortune <- sample(list, 1)
  print(fortune)
}


magic8 <- function(){
  input <- readline(prompt = "Enter question yes/no question: ")
  results <- c("It is certain.",
               "It is decidedly so.",
               "Without a doubt.",
               "Yes – definitely.",
               "You may rely on it.",
               "As I see it, yes.",
               "Most likely.",
               "Outlook good.",
               "Yes.",
               "Signs point to yes.",
               "Reply hazy, try again.",
               "Ask again later.",
               "Better not tell you now.",
               "Cannot predict now.",
               "Concentrate and ask again.",
               "Don't count on it.",
               "My reply is no.",
               "My sources say no.",
               "Outlook not so good.",
               "Very doubtful.")
  final <- sample(results, 1)
  print("Thinking.....")
  Sys.sleep(2)
  print(final)
}


diceGame <- function(){
  print("Whoever gets the higher roll wins!")
  print("And just for you, we're playing with d-20s.")
  dice1 <- sample(1:20, 1)
  dice2 <- sample(1:20, 1)
  print("Rolling...")
  Sys.sleep(2)
  print(paste("Your die: ", dice1))
  print(paste("My die: ", dice2))
  if (dice1 == dice2) {
    print("A tie! That doesn't happen that often!")
  } else if (dice1 > dice2) {
    print("Congrats! You won!")
  } else if (dice1 < dice2) {
    print("I won!")
  } else {
    print("Oh no... something went wrong")
  }
}

