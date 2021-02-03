Feature: Practising a game
  As a player,
  I want to practise a game by spelling the right words,
  In order to be able to play a game and be able to guess and spell the the valid word correctly


Feature: Getting feedback
  As a player,
  I want to get appropriate feedback after each attempt,
  In order to know which words i guessed correctly


Scenario: start a new game
  When i click on start a new game
  Then i should be redirected to the game and get length of letters with the first letter of an unknown word


Scenario: Show existing game
  Given i am on the game page
  When i choose to show an existing game
  Then i should be able to see the state of the game

Scenario: start a new round
  Given an existing game
  When i click on "new round"
  Then i should see a new game round with a different first letter of an unknown word
