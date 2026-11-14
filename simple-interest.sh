
#!/bin/bash

# Simple Interest Calculator

echo "Simple Interest Calculator"

read -p "Enter the principal amount: " p
read -p "Enter the annual rate of interest: " r
read -p "Enter the time period in years: " t

# Calculate simple interest
interest=$(awk -v p="$p" -v r="$r" -v t="$t" \
'BEGIN { printf "%.2f", (p * r * t) / 100 }')

echo "The Simple Interest is: $interest"
