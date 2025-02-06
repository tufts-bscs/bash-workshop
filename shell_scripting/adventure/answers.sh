#!/bin/bash

# Welcome message
echo "Welcome to the Simple Adventure Game!"
echo "In this game, you’ll make decisions to guide your character through the story."

# Challenge 1: Ask for the player's name
# Fill in the blank to store the player's name
echo "What is your name, adventurer?"
read player_name # (Hint: Store the player's name here)
echo "Hello, $player_name! Let's begin your adventure."

# Challenge 2: Choose your quest
# Present the player with a choice of quests
echo "Choose your quest:"
echo "1. Fight a dragon"
echo "2. Find hidden treasure"
echo "3. Help a villager in need"
read choice

# Validate that a number was entered for the quest choice
while ! [[ "$choice" =~ ^[1-3]$ ]]; do
    echo "Invalid choice. Please enter 1, 2, or 3:"
    read choice # (Hint: Store the player's choice here)
done

# Challenge 3: Based on the player's choice, show the correct scenario
# Fill in the blank to handle each option
if [ "$choice" -eq 1 ]; then
    echo "You have chosen to fight a dragon!"
    echo "Do you want to fight or run away? (fight/run)"
    read action
    if [ "$action" = "fight" ]; then
        echo "You fought valiantly but the dragon defeated you."
    elif [ "$action" = "run" ]; then
        echo "You wisely ran away from the dragon. Better safe than sorry!"
    else
        echo "I didn't understand that, but let's continue."
    fi
elif [ "$choice" -eq 2 ]; then
    echo "You are searching for treasure!"
    # Challenge 4: Count down the time for searching
    echo "How many minutes will you search for treasure?"
    read minutes
    while [ "$minutes" -gt 0 ]; do
        echo "Searching... Time left: $minutes minutes"
        ((minutes--)) # (Hint: How do you decrease the value of 'minutes'?)
        sleep 1
    done
    echo "You found the treasure! Congratulations!"
elif [ "$choice" -eq 3 ]; then
    echo "You have chosen to help a villager."
    echo "The villager needs a magic potion to complete their task."
    echo "Do you have a potion? (yes/no)"
    read has_potion
    if [ "$has_potion" = "yes" ]; then
        echo "You helped the villager with the potion. Task complete!"
    else
        echo "The villager is sad, but maybe you can help them later."
    fi
else
    echo "That’s not a valid choice. The game is over for you."
fi

# Challenge 5: Ask if the player wants to play again
# Fill in the blank to check if the player wants to replay
echo "Do you want to play again? (yes/no)"
read play_again

if [ "$play_again" = "yes" ]; then
    echo "Great! Let's start a new adventure!"
else
    echo "Thanks for playing, $player_name! Goodbye!" # (Hint: Use the player's name here)
    exit 0
fi
