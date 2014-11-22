# Tealeaf Academy Introduction to Ruby and Web Development
# Lesson 1 Assignment: Rock, Paper, Scissors


  puts "Play Rock Paper Scissors!"

  begin

  puts "Choose one: (P/R/S)"

  player_select = gets.chomp

  game_choices = {"p" => "Paper", "r" => "Rock", "s" => "Scissors"}

  rand_num = 0 + rand(0..2)

  comp_select = game_choices.keys[rand_num]



  if player_select == comp_select
   puts "You picked" + " " + game_choices.values[rand_num]
   puts "Computer picked" + " " + game_choices.values[rand_num]
   puts "Its a tie."

  elsif (player_select == "p" && comp_select == "r") ||
  (player_select == "r" && comp_select == "s") ||
  (player_select == "s" && comp_select == "p")
   puts "You picked" + " " + game_choices[player_select]
   puts "Computer picked" + " " + game_choices.values[rand_num]
   puts "You won!"

  elsif (player_select == "p" && comp_select == "s") ||
  (player_select == "r" && comp_select == "p") ||
  (player_select == "s" && comp_select == "r")
   puts "You picked" + " " + game_choices[player_select]
   puts "Computer picked" + " " + game_choices.values[rand_num]
   puts "Computer won!"

  else
   puts "You did not enter a valid selection"

end


  puts "Play Again? (Y/N)"

    play_again = gets.chomp


  end while play_again == "Y" || play_again == "y"

       puts "Thanks for playing, GoodBye!"
