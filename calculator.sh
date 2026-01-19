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
