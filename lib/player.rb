
#Variables d'instance : un joueur a un nom (habile) et un symbole ("x" ou "o").

class Player
    attr_accessor :name, :symbole
    #TO DO : la classe a 2 attr_reader, son nom et sa valeur (X ou O).
  
    
    def initialize(name,symbole)
      #TO DO : doit régler son nom et sa valeur
      @name = name
      @symbole = symbole
    end
end