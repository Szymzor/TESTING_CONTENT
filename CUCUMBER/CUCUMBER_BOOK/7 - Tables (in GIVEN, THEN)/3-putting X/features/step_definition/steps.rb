Given /^a board like this:$/ do |table|
  @board = table.raw
end

When(/^player x plays in column (\d+), row (\d+)$/) do |col, row|
  puts "\e[47mYOUR TABLE BELOW:\e[0m"
  puts @board
	row = row.to_i
	col = col.to_i 
	@board[col][row] = 'x'
end

Then(/^the board should look like this:$/) do |expected_table|
  expected_table.diff!(@board)
end

