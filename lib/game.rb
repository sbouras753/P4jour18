

#equire_relative 'boardcase'

class Game
    #TO DO : la classe a plusieurs attr_accessor: le current_player (
        #égal à un objet Player), le status (en cours, nul ou un objet 
        #Player s'il gagne), le Board et un array contenant les 2 joueurs.
    attr_accessor :Player1, :Player2, :tableau_position , :tableau
      
    
    def initialize 
      #TO DO : créé 2 joueurs, créé un board, met l e status à "on going", défini un current_player
      @tableau = Board.new()
      @tableau_position = ['A1','A2','A3','B1','B2','B3','C1','C2','C3']
    end
  
    def turn
      #TO DO : méthode faisant appelle aux méthodes des autres classes (notamment à l'instance de Board). 
      #Elle affiche le plateau, demande au joueur ce qu'il joue, vérifie si un joueur a gagné, 
      #passe au joueur suivant si la partie n'est pas finie.
    
      symbole = ["X","O"]
      p "Tu t'appelles comment?"
      print '>'
      name1 = gets.chomp
      p " Tu t'appelles comment?"
      print '>'
      name2 = gets.chomp 
      p "#{name1} choisis ton symbole entre X ou O"
      symbole1= gets.chomp.capitalize
      
      while not ["X","O"].include?(symbole1)
        p "choisis un symbole entre X et O"
        symbole1 = gets.chomp.capitalize

          
      end
      
      symbole.delete(symbole1)
      symbole2 = symbole[0]

      @Player1 = Player.new(name1,symbole1)
      @Player2 = Player.new(name2,symbole2)
     
      p @tableau

 gagne=false
 i=0
 nombredetour = 1
      while not ( gagne || @tableau_position.length == 0)

        p @tableau_position.length 
        gagne=new_round(i)
        i= (1-i)
        nombredetour +=1

      end

     if gagne
       p "vous avez gagné #{gagne.name}"

       
     else
        p "match nul"
     end  
                                                   
      
    end
  
    def new_round (numbre_de_tour)
      # TO DO : relance une partie en initialisant un nouveau board 
      #mais en gardant les mêmes joueurs.
      player = [@Player1, @Player2][numbre_de_tour]
      puts " #{player.name} à vous de jouer! "
      player_choice = gets.chomp.upcase
        while not @tableau_position.include?(player_choice)
        puts " #{player.name} entrez une case valide! "
        puts @tableau_position
        player_choice = gets.chomp.upcase
        end
      @tableau.victory?(player.symbole,player_choice)
      @tableau_position.delete(player_choice)
      puts @tableau

    end
  
    def game_end
      # TO DO : permet l'affichage de fin de partie quand un vainqueur est détecté 
      #ou si il y a match nul

    end    
  
  end





  