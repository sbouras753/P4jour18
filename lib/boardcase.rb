#faire le tableau qui concerne tableau et le qui a jouer
class BoardCase
    #TO DO : la classe a 2 attr_accessor, sa valeur en string (X, O, ou vide), ainsi que son identifiant de case
  attr_accessor :case_value
    
    def initialize(symbole =" ")
      #TO DO : doit régler sa valeur, ainsi que son numéro de case
      @case_value = symbole
    end
    
  end