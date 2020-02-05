#!/bin/bash
# CodedBy @lts_Abhiman
# OneLineShell Encoder

dependencies() {

command -v lolcat > /dev/null 2>&1 || { echo >&2 "I require lolcat but it's not installed. Install it. Aborting."; exit 1; }

}


b64() {

read -p "Input: " fName
read -p "Output: " oName

if [ ! -f "in/$oName" ]; then
if [ -f "in/$fName" ]; then
echo -e "\nEncoding..."
ABHI=($(cat in/$fName | base64 -w 0))
echo -e "echo '$ABHI' | base64 -d | sh" > out/$oName
else
echo -e "\nWarning: $fName not found!\n"
exit 0;
fi
if [ -f "out/$oName" ]; then
echo -e "\nSuccessfully Encoded and Saved♡\n"
fi
else
echo -e "\nError: File $oName already exist!\n"
exit 0;
fi
}

banner() {

printf "
\e[1;77m__________  ________   _____  
\______   \/  _____/  /  |  | 
 |    |  _/   __  \  /   |  |_
 |    |   \  |__\  \/    ^   /
 |______  /\_____  /\____   | 
        \/       \/      |  | 
                         |__|\e[0m\e[1;92mCreator @lts_Abhiman\e[0m                     "

}
dependencies
clear
banner | lolcat
echo -e "\n\nEncode Your Multiline shell in single line base64\n#OneLineShell" | lolcat
echo -e "\n\nEnter Name of File & Output File Name" | lolcat
b64 | lolcat
