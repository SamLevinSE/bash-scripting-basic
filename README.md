# Bash Scripting


### touch myBash.sh
Create a bash file

### chmod +x <myBash.sh>
Will make the bash file executable

### #!/bin/bash
File starts with #!/bin/bash


### mkdir <fileName>{0..100}
This will create one hundred files named <fileName>0 … <fileName>999

\ is a scape character

Variables format:
### a=Hello
### b=”Hello Sam”
### c=32

Calling a variable:
### echo $a
### echo ”$a, I am $c years old.”

Adding attribute to variable:
### declare -i age=32
#A read only variable:
### declare -r name=Sam
#make it lower case:
### declare -l lower=”Lower”
#make it upper case:
### declare -u upper=”upper”

Build-in variables:
### $HOME
Returns users home directory

### $PWD
Returns current directory

### $MACHTYPE
Returns the machines type

### $HOSTNAME
Returns system name

### $BASH_VERSION
Returns the version of bash

### $SECONDS
Returns the number of seconds the bash session run

### $0
Returns name of the script

Command substitution
#Getting the path to the current directory and assign it to a variable:
### workingDir=$(pwd)

Arithmetic Operations:
### sum=$((age*2+10))
￼

……………………………………..
Comparison operations:

#Returns 1 for false and 0 for true
### [[ ”cat” == ”dog” ]]
### echo $?
#Returns 1 for false and 0 for true
### [[ 32 -eq 32 ]]
### echo $?

……………………………………..
Working with Strings

#check number of chars is a string
### echo ${#name}

#Manipulating just a part of a text
### text="helloworldthisisme"
### world=${text:5:5}
### me=${text: -2}
### this=${text: -8:4}
### echo "world: $world, this: $this, me: $me"

#Changing a part of string with something else:
### myList=”apple banana banana cherry”
### echo ${myList/banana/durian}
#For changing all the bananas, we use // instead of one /
### echo ${myList//banana/durian}
### echo ${myList/b*a/orange}

……………………………………..
Printf

### printf "Name:\t%s\nID:\t%04d\n" "Sam" "21"

### today=$(date +"%d-%m-%Y")
### time=$(date +"%H:%M:%S")
-v will assign the value of printf to the variable <toPrint>
### printf -v toPrint "Current User:\t%s\nDate:\t\t%s @ %s\n" $USER $today $time
### echo "$toPrint"


……………………………………..
#empty array
### myArray=()
### myOtherArray=("hi" "hey" "hello")
### myArray[0]="hallå"
### echo ${myOtherArray[2]}
#print all the elements in the array
### echo ${myOtherArray[@]}
#bash version 4 (Doesn't work with version 3)
### declare -A myDict
### myDict[color]="light blue"
### myDict["the object"]=table
### echo ${myDict["the object"]} is ${myDict[color]}
