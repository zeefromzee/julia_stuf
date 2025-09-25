#code for guessing the number computer chose
print("WELCOME TO THE GUESSING GAME!\n")

# Generate a random number between 1 and 50
choice = rand(1:50)

# Loop until the user guesses correctly
while true
    print("Enter your guess: ")
    
    # Read user input
    input = readline()

    # Check if input is a valid number
    if !all(isdigit, input)
        println("Invalid input! Please enter a number between 1 and 50.")
        continue
    end

    # Convert the input to an integer
    user_guess = parse(Int, input)

    # Check the guess
    if user_guess < choice
        println("Think Bigger!\n")
    elseif user_guess > choice
        println("Think a little bit smaller!\n")
    else
        println("You win! The correct number was $choice ")
        break
    end
end
