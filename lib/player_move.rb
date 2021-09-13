def player_move(player, grid)
  begin
    print "Player '#{player}' move (x,y): "
    pos = gets.chomp
    row, col = pos.split(',').map { |num| num.to_i }
  end until grid[row][col].nil?

  grid[row][col] = player
end