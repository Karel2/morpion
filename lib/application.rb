require './game'


class Application

	def game_start
    
		puts "Bienvenue dans ce jeu du Morpion"
		while true 

			#on affiche le menu
			puts "Appuie sur 1 pour lancer une partie"
			puts "Appuie sur 2 pour quitter"
			answer = gets.chomp.to_i

			case answer #en fonction du choix
			when 1
				Game.new.perform
			when 2
				puts "Au revoir"
				break #ce "break" permet de sortir de la boucle while
			else
        puts "Ce choix n'existe pas, merci de ressayer" 
			end
		end
	end

	def perform
		game_start
	end

end	

Application.new.perform