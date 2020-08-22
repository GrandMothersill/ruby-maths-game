Classes: Player, Question, Turn, Game


Remember that objects are important for two things:

State: Storing data describing themselves (variables)
Behavior: Defining actions that can be performed on them (methods)

Turn: STATE: has a current_player whose turn it is
      BEHAVIOR: can set or unset current_player status
            - creates QUESTIONS


Game: BEHAVIOR: passes through the game loop
      BEHAVIOR: generates and poses a question to current_player
            - creates PLAYERS, TURNS

Question: STATE: the question string to be posed to the player
      STATE: question has an answer
      BEHAVIOR: takes player input in the form of their answer to the question.
      BEHAVIOR: question can be answered, and responds conditionally on whether answer was correct or not
          

Players: STATE: each player has lives expressed as X/3
         BEHAVIOR: Can lose lives
         BEHAVIOR: Can win the game
