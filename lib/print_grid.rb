def print_grid(grid)
  board = grid.map do |row|
    display_row = row.map { |cell| cell.nil? ? ' ' : cell }
    display_row.join('|')
  end

  board = board.join("\n#{'-'*5}\n")
  puts board
end