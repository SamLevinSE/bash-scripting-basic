#!/bin/bash

name=Sam
age=32
tittle="intern and a computing studen"


echo "Hello, I'm $name $age. I'm an $tittle"


#Adding attribute to variable:
declare -i age=32
# A read only variable:
# declare -r name=Sam
# make it lower case:
# declare -l lower="Lower"
# make it lower case:
# declare -u upper="upper"
# echo "$name $age, $upper $lower"

workingDir=$(pwd)
echo "The working directory is >>> $workingDir"

sum=$((age*2+10))
echo "Total age: $sum"

# Returns 1 for false and 0 for true
[[ "cat" == "dog" ]]
echo $?

# Returns 1 for false and 0 for true
[[ $age -eq 32 ]]
echo $?

echo ${#name}

# Just part of a text
text="helloworldthisisme"
world=${text:5:5} 
me=${text: -2} 
this=${text: -8:4}
echo "world: $world, this: $this, me: $me"

# Changing a part of string with something else:
myList="apple banana banana cherry"
echo ${myList/banana/durian}
# For changing all the bananas, we use // instead of one /
echo ${myList//banana/durian}
echo $myList
# For finding anything which starts with some char
echo ${myList/b*a/orange}

printf "Name:\t%s\nID:\t%04d\n" "Sam" "21"

today=$(date +"%d-%m-%Y")
time=$(date +"%H:%M:%S")
printf -v toPrint "Current User:\t%s\nDate:\t\t%s @ %s\n" $USER $today $time
echo "$toPrint"

#empty array
myArray=()
myOtherArray=("hi" "hey" "hello")
myArray[0]="hej"
echo ${myOtherArray[2]}
#print all the elements in the array
echo ${myOtherArray[@]}
# bash version 4 (Doesn't work with version 3)
declare -A myDict
myDict[color]="light blue"
myDict["the object"]=table
echo ${myDict["the object"]} is ${myDict[color]}
