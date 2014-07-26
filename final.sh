#!/bin/bash
my_array=("pwd" "ls" "man")
#only pwd ,ls, man commands can be executed
flag=1
echo "enter the command to be checked"
read command2
IFS=' ' read -a array <<< "$command2"

  for j in ${!my_array[@]} ; do
     if [[ ${array[0]} = ${my_array[$j]} ]] ; then
        flag=0
        break;
     fi
  done
  if [ $flag -eq 0 ]; then

     eval "$command2"
  else
   echo "not found "
  fi
