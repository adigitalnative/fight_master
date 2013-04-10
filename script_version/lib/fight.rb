class Fight
  def generate(current_phrase, moves_count)
    while current_phrase <= TOTAL_PHRASES
      number_moves = 1 + rand(14)
      current_move = 1

      while current_move <= number_moves
        Fight.print_moves(rand(0..1), rand(moves_count-1))
        current_move += 1
      end

      puts "Phrase End"
      current_phrase += 1
    end
  end

  def self.print_moves(attacker, move_selector)
    if attacker == 0
      puts "Actor 1 #{MOVES[move_selector][0]} -- Actor 2 #{MOVES[move_selector][1]}"
    else
      puts "Actor 1 #{MOVES[move_selector][1]} -- Actor 2 #{MOVES[move_selector][0]}"
    end
  end
end