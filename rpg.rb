class Monstro
    attr_accessor :energia, :ataque, :vivo

    def initialize
        self.energia = Random.rand(10) + 6
        self.vivo = true
    end

    def bater(alvo)
        if alvo.esta_vivo?
            self.ataque = Random.rand(5)
            puts "O dano do monstro foi #{self.ataque}"
                alvo.energia -= self.ataque
            else
                puts 'Você esta morto!'
            end
         
        end

    def esta_vivo?
        true if self.energia > 0
    end
end

    class Heroi
        attr_accessor :energia, :ataque, :vivo, :numero_de_mortos

def initialize
    self.energia = 30
    self.vivo = true
    self.numero_de_mortos = 0
end

def bater(alvo)
    if alvo.esta_vivo?
        self.ataque = Random.rand(5) + 3
        puts "Você acertou o monstro, seu dano foi #{self.ataque}"
             alvo.energia -= self.ataque
    else
        puts "O monstro esta morto!"
    end
        
        unless alvo.esta_vivo?
         puts "O monstro está morto!\n\n"
         self.numero_de_mortos += 1
        end
    end

def esta_vivo?
    true if self.energia > 0
end
end

THOR = Heroi.new
puts THOR.inspect

while THOR.esta_vivo?
    thanos = Monstro.new
    puts thanos.inspect

while thanos.esta_vivo? && THOR.esta_vivo?
    THOR.bater(thanos)
    puts "A energia do Thanos é #{thanos.energia}" if thanos.esta_vivo?

        if thanos.esta_vivo?
            thanos.bater(THOR)
            print "Sua energia é #{THOR.energia}"
            puts ''
        end
     end
    
end

puts 'THOR está morto.'
puts "Você matou #{THOR.numero_de_mortos} monstros."
