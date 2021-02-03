Feature: Practising a game
  As a player,
  I want to practise a game by spelling the right words,
  In order to be able to play a game and be able to guess and spell the the valid word correctly


Feature: Getting feedback
  As a player,
  I want to get appropriate feedback after each attempt,
  In order to know which words i guessed correctly


Scenario: Start a new game
  When | I click on start a new game
  Then | I should be redirected to the game and get length of letters with the first letter of an unknown word


Scenario: Show existing game
  Given | I am on the game page
  When | I choose to show an existing game
  Then | I should be able to see the state of the game

Scenario: Start a new round
  Given |  An existing game
  When  | I click on "new round"
  Then  | I should see a new game round with a different first letter of an unknown word


Scenario Outline: Guessing a word
  Given | I'm on the game page and i get a <word> to guess
  When | I make an <attempt> to guess the word's letters
  Then | I should get <feedback> wether my attempt right is or not

  Examples:
  If the letter is on the right place then use(+)
  If the letter exists but it is not on the right place the use(?)
  If the letter does not exist then use(-)

  | word  | attempt | feedback

  | Baard | Barst   | ++?--
  | Baard | Draad   | -?+?+
  | Baard | Bonje   | +----


