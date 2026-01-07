#!/bin/bash
read -p "Enter Basic Salary: " basic

da=$(echo "$basic * 0.40" | bc)
hra=$(echo "$basic * 0.20" | bc)
gross=$(echo "$basic + $da + $hra" | bc)

echo "Gross Salary = $gross"
``

