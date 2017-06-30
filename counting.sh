#!/bin/bash
#Counting program in bash
#Program asks user for a name then displays name

echo "Enter your name:"
read name

#Validate name
#While loop
while [ -z "$name" ] 
	do
	echo "Name cannot be blank. Please enter a name:"
	read name
done

while [[ $name =~ [^a-zA-Z]+ ]]
	do
	echo "Name cannot contain special characters. Please enter a name:"
	read name
done

while [[ ${#name} -lt 2 ]] || [[ ${#name} -gt 20 ]]
	do
	echo "Please enter a name between 2 to 20 letters:"
	read name
done

#Program displays name given if it follows the criteria
echo "Hello" $name"."

#Program asks user for a number then counts up to that number
echo "Please enter a number:"
read num 

#Validate num
#While loop
while [ -z "$num" ]
	do
	echo "Number cannot be blank. Please enter a number:"
	read num
done 

while [[ $num =~ [^0-9] ]]
	do
	echo "Please enter a valid number:"
	read num 
done 

while [ $num -le 3 ] || [[ $num -gt 253 ]]
	do
	echo "Please enter a number between 3 and 253:"
	read num
done

#Program displays number if it is a number that follows the criteria
echo "You have entered" $num"."
#Sleep allows program to come to a complete stop for a few seconds before going onto the next step
sleep 0.4

#Counter
echo "Counting up to $num..."

#Counter
counter=0
#Counter is set to identify whether number is even/odd and count by 2's
#Even numbers will start count from 0
#Odd numbers will start count from 1
if [ $((num % 2)) == 0 ]
	then counter=0 
	else counter=1 
fi

while [ $counter -le $num ];
	do
	echo "$counter"
	let counter=$counter+2;
done

sleep 0.4
echo Done.