# Step 1 - Race (no loop)

# Welcome the user
# Make the horses (array)
# Display the list of horses to the user (iterate using each_with_index)
# 1 - Lucky Strike
# 2 - Deep Impact
# Ask the user what horse they want to bet on (ask the number!)
# Store it in a variable (index)
# Select a random winner
# if the user horse is the same as the winner
# win
# otherwise
# lose
# Display the result to the user
# Display the winner horse

# STEP 2 - Loop
# Ask user if they want to play again
# Make it loop!

# STEP 3 - Betting
# Initialize a money variable
# If user loses, subtract 10
# If user wins, add 50
# Display the balance
# User cannot play again if no money is left
horses = ['Lucky Strike', 'Deep Impact', 'Rainbow', 'Twinkle Toes', "Elmer's"]
money = 100
continue = 'y'
# start loop
while continue == 'y' && money.positive?
  puts "Welcome to the race!"
  puts "Here are our horses"

  horses.each_with_index do |horse, index| # order is important
    puts "#{index + 1} - #{horse}" # this displays the index in a readbale 1-5 along with the horse name
  end

  puts ' ' # this is a space between lines

  puts "What horse would you like to bet on? Choose from 1-5"

  index = gets.chomp.to_i - 1 # this assures we get an integer
  user_horse = horses[index]
  winner = horses.sample # returns a string

  puts "The winner is #{winner}"

  if winner == user_horse # index == horses.index(winner)
    puts 'win'
    money += 50
  else
    puts 'lose'
    money -= 50
  end

  puts "The winner is #{winner}"
  puts "Your balance is #{money}."

  if money.zero?
    puts "You are out of money, get a job."
    continue = 'n'
  else
    puts 'Do you want to play again? (Y/N)'
    continue = gets.chomp.downcase
  end
end
