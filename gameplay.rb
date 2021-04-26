class Gameplay

  attr_accessor :p1, :p2, :turn

  def initialize(p1, p2)
    self.p1 = p1
    self.p2 = p2
    self.turn = p1
  end

  def start(p1, p2)

    while (p1.lives > 0 && p2.lives > 0)
      q1 = rand(1..10)
      q2 = rand(1..10)
      answer = q1 + q2

      puts "#{self.turn.name}: What does #{q1} plus #{q2} equal?"
      guess = gets.chomp.to_i
      
      if guess == answer
        puts "Correct! Good job #{self.turn.name}"

        if self.turn == p1
          p2.lives -= 1
          self.turn = p2
          puts "#{p1.name}: #{p1.lives}/3 vs #{p2.name}: #{p2.lives}/3"

        elsif self.turn == p2
          p1.lives -= 1
          self.turn = p1
          puts "#{p1.name}: #{p1.lives}/3 vs #{p2.name}: #{p2.lives}/3"
        end

      else
        puts "Your better than that #{self.turn.name}"

        if self.turn == p1
          p1.lives -= 1
          self.turn = p2
          puts "#{p1.name}: #{p1.lives}/3 vs #{p2.name}: #{p2.lives}/3"

        elsif self.turn == p2
          p2.lives -= 1
          self.turn = p1
          puts "#{p1.name}: #{p1.lives}/3 vs #{p2.name}: #{p2.lives}/3"
        end
      
      end

      if (p1.lives > 0 && p2.lives > 0)
        puts ""
        puts "------ New Turn ------"
      end

      if p1.lives == 0
        puts ""
        puts "#{p2.name} wins with #{p2.lives}/3 lives left"
      elsif p2.lives == 0
        puts ""
        puts "#{p1.name} wins with #{p1.lives}/3 lives left"
      end
    
    end
  
  end

end