require 'pp'
=begin
array of board games
rand generator
=end
class RandomGameGenerator

	def initialize
		file_board_games = File.read('list_of_board_games.txt').split(',')# { |word| word.split(',')}

		array_of_games = file_board_games.map do |word|
			word.gsub(/^'|'$/, '')
		end

	end

	def add_game
		puts "Do you have a new game to put in?"
		puts "Type 'yes' or 'no'"
		response = gets.chomp.downcase
			if response == 'yes'
				puts "Enter new board game: "
				new_game = gets.chomp
				list << new_game
			elsif response == 'no'
					add_game
			else
				puts "Type 'yes' or 'no'"
				return true
			end
	end

end

RandomGameGenerator.add_game
# puts
# number_in_list = f.length
# puts number_in_list

# x = rand(number_in_list)

# puts x