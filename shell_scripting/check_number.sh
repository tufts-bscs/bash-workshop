#!/bin/bash
echo "Enter a number:"
read num

if [ "$num" -gt 10 ]; then
    echo "Your number is greater than 10!"
else
    echo "Your number is 10 or less."
fi
