require "./game"
require "./board"

class Show

	def show_board(board)
    
		
		puts "          |          |      "
	
		puts "          |          |      "

		puts "     #{board.boardcase_array[0].value}    |     #{board.boardcase_array[0].value}    |    #{board.boardcase_array[0].value} "
	
		puts "          |          |      "

    puts "-" * 32

   
		puts "          |          |      "
		
		puts "          |          |      "

		puts "     #{board.boardcase_array[0].value}     |      #{board.boardcase_array[0].value}    |      #{board.boardcase_array[0].value}"
	
		puts "          |          |      "

		puts "-" * 32

		
		puts "          |          |      "
		
		puts "          |          |      "

		puts "     #{board.boardcase_array[0].value}     |      #{board.boardcase_array[0].value}    |      #{board.boardcase_array[0].value}"
	
		puts "          |          |      "

	end

end	