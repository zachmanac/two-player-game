2 players
3 lives
lose life if misanswered
at end of turn, output new score for both players
when one person's score reaches 0, announce winner and winning score

class: game
  generates math questions, contains logic of the game. keeps track of players and announces winner at end of game
  
  methods:
    start_game
    ask_question
    check_answer
    check_lives
    next_turn
    end_game
  
  variables:
    player_1
    player_2
    current_player

class: player
  contains info about player such as name, score, lives remaining

  methods:
    update_score
    update_lives

  variables:
    name
    score
    lives

class: scoreboard
  contains score of both players
  
  methods:
    output_scores

  variables:
    player_1
    player_2

class: question
  contains logic pertaining to questions

    methods:
      generate_question
      check_answer

    variables:
      answer
