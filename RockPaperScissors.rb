# Tealeaf Academy Introduction to Ruby and Web Development
# Lesson 1 Assignment: Rock, Paper, Scissors

puts "Play Rock Paper Scissors!"

begin
  puts "Choose one: (P/R/S)"
  player_select = gets.chomp
  game_choices = {"p" => "Paper", "r" => "Rock", "s" => "Scissors"}
  rand_num = rand(0..2)
  comp_select = game_choices.keys[rand_num]

  while !(game_choices.keys).include?(player_select)
    puts "You did not enter a valid selection"
    player_select = gets.chomp
  end

  puts "You picked" + " " + game_choices[player_select]
  puts "Computer picked" + " " + game_choices.values[rand_num]

  if player_select == comp_select
    puts "It's a tie."

  elsif (player_select == "p" && comp_select == "r") ||
    (player_select == "r" && comp_select == "s") ||
    (player_select == "s" && comp_select == "p")
    puts "You won!"

  elsif (player_select == "p" && comp_select == "s") ||
    (player_select == "r" && comp_select == "p") ||
    (player_select == "s" && comp_select == "r")
    puts "Computer won!"
  end

  puts "Play again? (Y/N)"
  play_again = gets.chomp

end while play_again == "Y" || play_again =="y"

puts "Thanks for playing, Goodbye!"
