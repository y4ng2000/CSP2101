#!/bin/bash
#studentnumber - 10502149
#studentname - HTET OO WAI YAN
Red='\033[31m'
Blue='\033[34m'
Green='\033[32m'
CYAN='\033[0;36m'
SP='\033[0;0;39m'
RED='\033[31m'

bd(){
    read -p "press Enter to process next step..." enterkey
}
name(){
    read -p "First name :" fn
    read -p "Last name :" ln
    echo -e "${CYAN}Your name is $fn $ln${SP}"
    bd
}
dob(){
    while true; do
    read -p "Enter Date Of Birth with the format of (mm-dd-yyyy): " ob
    if [[ $ob =~ ^[0-9]{2}-[0-9]{2}-[0-9]{4}$ ]]
      then echo "Date $ob is valid"
      break
    else
    echo -e "${CYAN}Date is not valid, Please try to follow (mm-dd-yyy) format${SP}"
fi
done 
 
}
Address(){
    read -p "Please enter your Address :" ad
    
}
color(){
    read -p "Please enter your Desired Color (Red/Blue/Green):" co
    
}

echo -e "${CYAN}------------- W E B - R E G I S T R A T I O N-------------${SP}"
echo -e "${CYAN}Register your information: ${SP}"
    name
    dob
    Address
    color    
if [ "$co" = "Blue" ]; then
 echo -e "${Blue}Your Name = $fn $ln${SP}"
 echo -e "${Blue}Date Of Birth = $ob${SP}"
 echo -e "${Blue}Address = $ad${SP}"
 echo -e "${Blue}Desired Color = $co${SP}"
elif [ "$co" = "Red" ]; then
 echo -e "${Red}Your Name is $fn $ln${SP}"
 echo -e "${Red}Date Of Birth = $ob${SP}"
 echo -e "${Red}Address = $ad${SP}"
 echo -e "${Red}Desired Color =  $co${SP}"
elif [ "$co" = "Green" ]; then
 echo -e "${Green}Your Name is $fn $ln${SP}"
 echo -e "${Green}Date Of Birth = $ob${SP}"
 echo -e "${Green}Address = $ad${SP}"
 echo -e "${Green}Desired Color = $co${SP}"
fi
exit 0

