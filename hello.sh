#! /bin/bash 
# it is a comment

echo "Hello-World"

# echo Our shell is: $BASH #give bash shell name
# echo Our shell version is: $BASH_VERSION
# echo Our home directory is: $HOME
# echo Our current working directory is: $PWD

# name=Mark
# echo The name is: $name
# value=10
# echo The value is: $value

# Taking input form user
# echo "Enter names: "
# read n1 n2 n3 n4
# echo "Names: $n1,$n2,$n3,$n4"

# to take input in same line
# read -p "username: " u_name
# read -sp "password: " pass #here -s is used for silent i.e when user enter the password it will not be visible
# echo #to add a bank line
# echo "username: $u_name"       
# echo "password: $pass"

#array
# echo "Enter names: "
# read -a name
# echo Length of array is : ${#name[@]} #--> print length of array
# echo Index of array : ${!name[@]} #--> print all element's index of array
# echo "Names are : ${name[0]}, ${name[1]}"
# echo Names are : ${name[@]} #--> print all element of array
# os=('ubuntu' 'windows' 'mac')
# unset os[2] #--> remove value from 2nd index
# os[3]='kali' #--> setting value
# echo Array is : ${os[@]}


# empty read
# echo "Enter name: "
# read #input will be stored in a default varible as REPLY
# echo "Name is : $REPLY" 


#argument in bash script -->  ./hello.sh inp1 inp2 inp3
# echo 'Names are : ' $1 $2 $3
# //alternative for printing
# args=("$@") #arguments as an array
# echo ${args[0]} ${args[1]} ${args[2]}
# or
# echo $@ 

# echo Number of arguments are : $# #no of arguments


#if statement
# count=10

# if (( $count == 1 ))
# # or if [ $count -eq 10 ]
# then
#     echo "equal"
# elif [ $count -ne 1 ]
# then 
#     echo "not equal"
# else
#     echo "Invalid"
# fi #end of if


# #file test operators
# echo -e "Enter the name of the file : \c"
# read file_name
# if [ -e $file_name ] # -e for exist or not
# # -f for it is file or not
# # -d for it is directory or not
# # -s for file is empty or not
# then 
#     echo "$file_name found"
# else
#     echo "$file_name not found"
# fi


## appending data to file
# echo -e "Enter the name of the file : \c"
# read file_name
# if [ -f $file_name ]
# then 
#     if [ -w $file_name ]
#     then
#         echo "type some text data. Press ctrl+d to exit."
#         cat >> $file_name
#     else
#         echo "File don't have write permissions."
#     fi
# else
#     echo "$file_name not found"
# fi


#switch case

# echo Hey choose an option
# echo
# echo a=To see current date
# echo b=list all the files in current dir
# echo -e "Enter choice : \c"
# read choice
# case $choice in
#     a) date;;
#     b) ls;;
#     *) echo "Invalid output" 
# esac

#pattern based case
# echo -e "Enter some character : \c"
# read value
# case $value in
#     [a-z] )
#         echo "a-z";;
#     [A-Z] )
#         echo "A-Z";;
#     [0-9] )
#         echo "0-9";;
#     ? )
#         echo "specical char";;
#     * )
#         echo "invalid"
# esac

#for loop

#Method 1
# for i in 1 2 3 4 5
# do 
#     echo the number is $i
# done

#Method 2
# for j in eat your lunch 
# do echo $j
# done

#Method 3
# for p in {1..10..2} # {start..end..increment}--> not work in version less than 4
# do echo $p
# done

# Method 4
# for (( i-0; i<5; i++ ))
# do 
#     echo $i
# done

#using for loop to  execute commands
# for command in ls pwd date
# do  
#     echo -------------$command------------ #printing command
#     $command #running command
# done

#printing all folders form pwd
# for i in *
# do
#     if [ -d $i ]  #-d for folders and -f for files
#     then
#         echo $i
#     fi
# done

#while loop
# count=0
# num=10
# while [ $count -le $num ] #-le for less than equal to
# do 
#         # break or continue
#     echo Numbers are $count
#     let count++
# done

# iteating values from file
# hosts="/home/shankar/Desktop/shell_script/hi"
# for i in $(cat $hosts)
# do echo $i
# done


#Select loop
# select name in mark john ben julie
# do 
#     # echo $name
#     case $name in 
#     mark ) echo "mark selected" ;;
#     john ) echo "john selected" ;;
#     ben ) echo "ben selected" ;;
#     julie ) echo "julie selected" ;;
#     * ) echo "invalid" ;;
#     esac
    
# done

#until loop
# n=0
# until [ $n -ge 10 ]
# do 
#     echo $n
#     n=$(( n+1 )) ## or let n++
# done


#AND opearator --> -a,&&
# a=6
# if [ $a -gt 5 ] && [ $a -lt 7 ]
# then
#     echo "true"
# else
#     echo "false"
# fi

#OR operator --> -o,||
# a=1
# if [ $a -gt 5 ] || [ $a -lt 7 ]
# then
#     echo "true"
# else
#     echo "false"
# fi


#arithmetic operators
# a=20
# b=10
# echo Sum is : $(( a+b ))
# echo Subtraction is : $(expr $a - $b ) #alternate way
# echo Division is : $(( a/b ))
# echo Product is : $(( a*b ))
# echo Modulus is : $(( a%b ))


#floating point operations
# n=2.5
# m=4.4
# echo "$n+$m" | bc
# echo "$n-$m" | bc
# echo "$n*$m" | bc
# echo "scale=2;$m/$n" | bc
# echo "$m%$n" | bc
# #scale is the No. of values after deciaml
# num=4
# echo "scale=2;sqrt($num)" | bc -l #-l for calling math library
# echo "3^3" | bc  -l


#read a file content

# while read p
# do echo $p
# done < hi
#or
# cat hi | while read p
# do echo $p
# done

# using IFS--> Internal field seperator i.e. determine word spliting
# while IFS=' ' read -r line 
# do
#     echo $line
# done < hi


#functions
#Method 1
# function greet(){
#     echo "Hello-World"
# }

# Method 2
# name(){
#     echo $1
# }
# quit(){
#     exit
# }


# greet
# name Ram
# exit #no command will be executed after this.


#local variables
# id(){
#         local name=$1
#         echo 'Name inside function is' $name
# }
# name=Ram
# echo Names is $name :before
# id Ben
# echo Names is $name :after


#function example

# usage(){
#         echo "You need to provide an Argument !"
#         echo "usage : $0 file_name"
# }

# is_file_exist(){
#         local file=$1
#         [[ -f $file ]] && return 0 || return 1
# }

# [[ $# -eq 0 ]] && usage

# if ( is_file_exist $1 )
# then
#         echo File found
# else
#         echo File not found


# fi


# declaring readonly variables and functions

# var=31
# readonly var
# var=50 # value will not be changed as we have declared var as readonly
# echo var is : $var

# hello(){
#         echo Hello guys
# }
# readonly -f hello  #--> -f for function
# # after making function readonly we will not be able to overwrite this function
# hello

# Signal and Traps
# trap "echo terminated" 0 2 15
# echo "pid is $$"   
# while (( COUNT < 10 ))
# do
#     sleep 1
#     (( COUNT ++ ))
#     echo $COUNT
# done
# exit 0


#debugging 
# bash -x ./hello.sh
# set -x
# echo hi
# set +x
