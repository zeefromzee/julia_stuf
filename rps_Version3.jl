# Rock Paper Scissors game against the computer in Julia

# List of possible choices
choices = ["Rock", "Paper", "Scissors"]

# Set the user choice here
user_choice = "Rock"  # <-- Edit this to change your choice

println("The choice you made is: ", user_choice)

# Randomly select the computer's choice
computer_choice = rand(choices)
println("The computer chose: ", computer_choice)

# Determine the winner
if user_choice == "Rock"
    if computer_choice == "Paper"
        println("The computer wins!")
    elseif computer_choice == "Rock"
        println("It's a tie!")
    else
        println("You win!")
    end

elseif user_choice == "Paper"
    if computer_choice == "Scissors"
        println("The computer wins!")
    elseif computer_choice == "Paper"
        println("It's a tie!")
    else
        println("You win!")
    end

elseif user_choice == "Scissors"
    if computer_choice == "Rock"
        println("The computer wins!")
    elseif computer_choice == "Scissors"
        println("It's a tie!")
    else
        println("You win!")
    end

else
    println("Invalid choice. Please select 'Rock', 'Paper', or 'Scissors'.")
end