#!/bin/bash
echo "Enter a number to count down from:"
read num

while [ "$num" -gt 0 ]; do
    echo "While Loop: $num"
    ((num--))
    sleep 0.5  # Pause for half of a second
done

echo "Blast off!"

# Reset num before using it in the for loop
read -p "Enter a number to count down from again: " num

for ((i=num; i>0; i--)); do
    echo "For Loop: $i"
    sleep 0.5
done

echo "Woohoo!"
