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

grid = [
  ['x', nil, 'x'],
  ['x', 'o', 'x'],
  ['x', nil, 'x']
]

def print_grid(grid)
  board = grid.map do |row|
    display_row = row.map { |cell| cell.nil? ? ' ' : cell }
    display_row.join('|')
  end

  board = board.join("\n#{'-'*5}\n")
  puts board
end

def player_move(player, grid)
  begin
    print "Player '#{player}' move (x,y): "
    pos = gets.chomp
    row, col = pos.split(',').map { |num| num.to_i }
  end until grid[row][col].nil?

  grid[row][col] = player
end

print_grid(grid)

player_move('x', grid)
print_grid(grid)

player_move('o', grid)
print_grid(grid)

