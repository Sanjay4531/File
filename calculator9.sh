#!/bin/bash

# Arithmetic calculator
echo "Calculator"
echo "1 SUM"
echo "2 Sub"
echo "3 Mul"
echo "4 Div"
echo "5 Exit"

while true; do

       
read -p "Select (1-5): " choice

if [ $choice -eq 5 ]; then
echo "Exiting..."
break
fi
read -p "First number: " num1
read -p "Second number: " num2


case $choice in
  1) result=$((num1 + num2));;
  2) result=$((num1 - num2));;
  3) result=$((num1 * num2));;
  4) 
    if [ $num2 -gt 0 ]; then
    result=$((num1 / num2));
    else
    echo "Error: Division by zero"; continue;
    fi;;
  *) echo "Invalid choice"; continue;;
  5) Exit
  esac

  echo "Result: $result"
done
