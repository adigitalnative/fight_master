MOVES = [["Cut 1", "Parry 1"], ["Cut 2", "Parry 7"], ["Cut 2", "Parry 2"], ["Cut 3", "Parry 3"], ["Cut 4", "Parry 4"], ["Cut 5", "Parry 5"], ["Cut 5", "Parry 5a"], ["Thrust 1", "Parry 1"], ["Thrust 1", "Parry 7"], ["Thrust 2", "Parry 2"], ["Thrust 3", "Parry 3"], ["Thrust 4, Parry 4"], ["Headswipe", "Duck"], ["Bellyswipe", "Avoid"], ["Corp'a'corp'", "Corp'a'corp"]]

moves_count = MOVES.count

current_phrase = 1

class Fight
  def initialize(current_phrase, moves_count)
    while current_phrase <= TOTAL_PHRASES
      number_moves = 1 + rand(MAX_MOVES)
      current_move = 1

      while current_move <= number_moves
        print_moves(rand(0..1), rand(moves_count-1))
        current_move += 1
      end

      puts "Phrase End"
      current_phrase += 1
    end
  end

  def print_moves(attacker, move_selector)
    if attacker == 0
      puts "Actor 1 #{MOVES[move_selector][0]} -- Actor 2 #{MOVES[move_selector][1]}"
    else
      puts "Actor 1 #{MOVES[move_selector][1]} -- Actor 2 #{MOVES[move_selector][0]}"
    end
  end
end

puts "Welcome to the Fight Generator"
printf "How many phrases in your fight? > "
TOTAL_PHRASES = gets.chomp.to_i
printf "Maximum number of moves per phrase? > "
MAX_MOVES = gets.chomp.to_i - 1

fight = Fight.new(current_phrase, moves_count)