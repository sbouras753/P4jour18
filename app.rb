#requete de toutes les gems pas beosin de les mettre au fur et à mesure
require 'bundler'
Bundler.require 

require_relative 'lib/player'
#require_relative 'lib/show'
require_relative 'lib/boardcase'
require_relative 'lib/game'
require_relative 'lib/board'


objet=Game.new
objet.turn