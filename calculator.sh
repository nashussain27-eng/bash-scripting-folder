#!/bin/bash 
read -p "Enter First number: " num1
read -p "Enter second number: " num2 

sum=$((num1 + num2))
sub=$((num1 - num2))
mul=$((num1 * num2))

if [ "num2" -eq 0 ]; then
    div="Error (Division by zero)"
else
    div=$((num1 / num2))
fi 

echo "Results: $num1 + $num2 = $sum"
echo "$num1 - $num2 = $sub"
echo "$num1 - $num2 = $mul"
echo "$num1 - $num2 = $div"

: '
read -p Prompts the user. Displays a message and waits for the user to type a value. 
All four operations $(( .. )) is the standard Bash syntax for integer math
Division by Zero if [ "$num2 -eq 0" ] prevents the script from crashing by checking the second number before dividing
echo just basically displays results, prints the final calculation string to the terminal. * is multiplying and / is for dividing


'
