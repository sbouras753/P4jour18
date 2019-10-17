#Cette Classe représente le plateau de Jeu, elle contient les cases de jeu
class Board
  #TO DO : la classe a 1 attr_accessor : un array/hash qui contient les BoardCases.
  attr_accessor  :tableau
  #Optionnellement on peut aussi lui rajouter un autre sous le nom @count_turn pour compter le nombre de coups joué


  def initialize()
    #TO DO :
    @tableau = []
    9.times {@tableau.push(BoardCase.new())} 
    #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    #Ces instances sont rangées dans un array/hash qui est l'attr_accessor de la classe
  end

  def play_turn()
    #TO DO : une méthode qui :
    #1) demande au bon joueur ce qu'il souhaite faire
    #2) change la BoardCase jouée en fonction de la valeur du joueur (X ou O)
    tab=[]
    @tableau.each {|i| tab.push(i.case_value)}

    #mise en form de notre tabt
    "   1 2 3\n   - - -\nA |%s|%s|%s|\nB |%s|%s|%s|\nC |%s|%s|%s|\n   - - -\n" % tab
    #TO DO : une méthode qui :
    #1) demande au bon joueur ce qu'il souhaite faire
    #2) change la BoardCase jouée en fonction de la valeur du joueur (X ou O)
  end

  def victory?(place, symbole)
    #TO DO : une méthode qui vérifie le plateau et indique s'il y a un vainqueur ou match nul
    place.split('')
    index = 0
    emp=0
    if place[0] == 'B'
        emp = 3
    elsif place[0] == 'C'
        emp = 6
    else 
        emp = 0 
    end
  index=place[1].to_i-1 + emp
    @tableau[index].case_value = symbole

  end

end 