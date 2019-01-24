require './player'
require './show'
require './board'


class Game

	attr_accessor :current_player, :status, :board, :player_array

	def initialize
		p1 = Player.new("p1", "x")
		p2 = Player.new("p2", "o")
		@player_array = []
		@player_array.push(p1, p2)
		@board = Board.new
		@status = "On going"
		@current_player = p1
		#puts @player_array.inspect

    #TO DO : créé 2 joueurs, créé un board, met le status à "on going", défini un current_player
  end

  def turn

  	Show.new.show_board(@board)
  	puts @status




  	@board.play_turn

    #TO DO : méthode faisant appel aux méthodes des autres classes (notamment à l'instance de Board). Elle affiche le plateau, demande au joueur ce qu'il joue, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie.
  end

  def new_round
    # TO DO : relance une partie en initialisant un nouveau board mais en gardant les mêmes joueurs.
  end

  def game_end
    # TO DO : permet l'affichage de fin de partie quand un vainqueur est détecté ou si il y a match nul
	end 	

	def perform
		turn
	end	

end	


