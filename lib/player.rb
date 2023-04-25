class Player
      attr_accessor :name, :life_points

    def initialize(name)
        @name = name
        @life_points = 10
    end

    def show_state
        puts "#{self.name} a #{self.life_points} points de vie !"
    end

    def gets_damage(number)
        @life_points = @life_points - number
        if @life_points <= 0
        puts "#{self.name} tu as perdu"
        puts "--------------- GAME OVER ------------------------"
    end
end
    
    def attacks(player)
       puts "#{self.name} attaque #{player.name}"
       damage = compute_damage 
       puts "#{self.name} inflige #{damage} points de vie"
       player.gets_damage(damage)
    end

    def compute_damage
       return rand(1..6)
    end
end

