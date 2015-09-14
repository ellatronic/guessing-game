def guessing_game
    random_number = rand(1..100) #game picks a random number
    puts "Welcome to the number guessing game!" #prompt the user for a number
    puts "Please pick a number from 1-100."
    puts "Guess number: "
    guess_count = 0 #number of guesses
    duplicate_count = 0 #number of duplicates
    previous_guesses = [] #store previously guessed numbers
    while true
        response = gets.chomp.to_i #get response from user
        previous_guesses.each do |num| #check if duplicate
            if response == num
                duplicate_count += 1
                puts "You already guessed this number!"
                previous_guesses.delete(num)
            end
        end
        previous_guesses.push(response)
        if response > random_number #prompt too high
            guess_count += 1
            puts "Your guess was too high."
            puts "Please guess again: "
        
        elsif response < random_number #prompt too low
            guess_count += 1
            puts "Your guess was too low."
            puts "Please try again: "
        
        elsif response == random_number #prompt correct
            guess_count += 1
            puts "Correct! Yay! You won!"
            total_guesses = guess_count - duplicate_count
            puts "It took you " + total_guesses.to_s + " guesses!"
        break    
        end
    end
end
puts guessing_game