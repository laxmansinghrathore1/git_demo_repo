#!/bin/bash

hero="rancho"
villain="virus"


# user-defined variables

echo "3 idiots ka hero hai $hero"

echo "3 idiots ka villain hai $villain"


# shell / environment variables (pre-defined)

echo "current logged in user $USER"


# user input
read -p "Rancho ka poora naam kya tha?" fullname

echo "rancho ka poora naam $fullname tha"



#arguments (input from user on run time)


# ./3_idiots raju rancho farhan

echo "movie ka naam: $0" # (after $ any number show argument value) 

echo "first idiot: $1"
echo "second idiot: $2"
echo "third idiot: $3"

echo "the total number of ididots: $#"   # ($# - show how many argument pass)

echo "hence the 3 idiots are $@"   # ($@ - all argument show)


