array_of_words_entered = []

def ask_recursively question
	puts "Do you want to add a word?"
	answer = gets.chomp.downcase
		if answer == 'yes'
			puts "Add a word: "
			word = gets.chomp
				if word == ''
					puts "Please start again"
					ask_recursively question
				elsif word == Integer
					puts "Please start again and no numbers"
					ask_recursively
				else

				end
			true
		elsif answer == 'no'
			puts "Okay"
			false
		else
			puts "Please answer 'yes' or 'no'."
			ask_recursively question
		end
end

ask_recursively 'what'