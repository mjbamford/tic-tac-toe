# TIC-TAC-TOE!!
# Design limitations
# 1. x always starts

# START:
# draw grid
# get x's grid position (x,y or (1..9)?)
# draw grid with x's new position
# check for winner if number_of_turns >= 5
# if winner then goto END(x)
# goto END if number_of_turns == 9
#
# get O's grid position
# draw grid with O's new position
# check for winner if number_of_turns >= 5
# if winner then goto END(O)
# goto END if number_of_turns == 9
# goto START
#
# END(winner):
# if winner
#   Output the name of the winner
# else
#   Output Draw

# require "./print_grid"
require "./lib/print_grid"
require "./lib/player_move"
require "./lib/check_for_winner"
require "./lib/check_for_draw"

grid = [
  [nil, nil, nil],
  [nil, nil, nil],
  [nil, nil, nil]
]

grid = [
  ['x', 'o', 'x'],
  ['o', 'x', 'o'],
  [nil, nil, 'o']
]

winner = nil

until winner
  print_grid(grid)
  player_move('x', grid)
  winner = check_for_winner(grid)
  break if winner
  break if draw?(grid)

  print_grid(grid)
  player_move('o', grid)
  winner = check_for_winner(grid)
  break if draw?(grid)
end

print_grid grid
puts winner ? "The winner is #{winner}" : "Draw!"

