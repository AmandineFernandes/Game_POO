require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

player1 = Player.new("Homer")
player2 = Player.new("Bart")

puts "--------------------------------------------------"

puts "Mesdames et Messieurs,"
puts "À ma droite #{player1.name}" 
puts "À ma gauche #{player2.name}"

puts "--------------------------------------------------"

while player1.life_points > 0 && player2.life_points > 0

puts "Voici l'état de chaque joueur"
puts "#{player1.show_state} #{player2.show_state}"

puts "---------------- FIGHT ! -------------------------"

puts player1.attacks(player2)
puts player2.attacks(player1)
    if player2.life_points <= 0
       puts "#{player2.name} le LOOSER"
    break
 end 
    if player1.life_points <= 0
       puts "#{player1.name} le LOOSER"
    break
  end 
end

puts "-------------- Partie Terminée -------------------"

binding.pry