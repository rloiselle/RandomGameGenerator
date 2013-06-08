require 'pp'
=begin
array of board games
rand generator
=end
		file_board_games = File.read('list_of_board_games.txt').split(',')# { |word| word.split(',')}

		array_of_games = file_board_games.map do |word|
			word.gsub(/^'|'$/, '')
		end

		# puts "Do you have a new game to put in?"
		# puts "Type 'yes' or 'no'"
		# response = gets.chomp.downcase
		# 	if response == 'yes'
		# 		puts "Enter new board game: "
		# 		new_game = gets.chomp
		# 		list << new_game
		# 	elsif response == 'no'
		# 			add_game
		# 	else
		# 		puts "Type 'yes' or 'no'"
		# 		return true
		# 	end
puts
number_in_list = array_of_games.length
puts number_in_list

rand_game = rand(number_in_list)

puts rand_game

array_of_games.each_index do |array_index|
	if array_index == rand_game
		print array_of_games[rand_game]
	end
end


