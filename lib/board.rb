require './boardcase'
require "./game"

class Board

	attr_accessor :boardcase_array, :count_turn

	def initialize
		@boardcase_array = []
		9.times{@boardcase_array << BoardCase.new}
	end

	def play_turn
	
		puts "En quelle case veux tu jouer ?"
		answer = gets.chomp.to_i
		
			@boardcase_array.each_with_index do |case_user, index|
				if answer == index #index de la case = reponse user

					if case_user.value == "o" || case_user.value == "x"
						puts "choisis une autre case"
						answer = gets.chomp.to_i
					else #CHANGER AVEC METHODE PLAYER
						case_user.value = "x" #current_player.symbol

					end
				end
			end
	end

	def victory?
		victory_conditions_array = [[0,1,2],[0,3,6],[0,4,8],[1,4,7],[2,5,8],[6,4,2],[3,4,5],[6,7,8]]
		victory_conditions_array.each do |triple|
			["x","o"].each do |symbol|
				victory = true 
				triple.each do |case_index| 
					victory &&= @boardcase_array[case_index].value == symbol
				end
				puts "partie terminé" if victory
			end
		end
			
	end	

	def perform
		play_turn
		victory?
	end

end	



