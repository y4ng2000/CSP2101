#!/bin/bash
#studentnumber - 10502149
#studentname - HTET OO WAI YAN
RED="\033[31m"
GREEN="\033[32m"
BROWN="\033[33m"
BLUE="\033[34m"
DARKGRAY='\033[1;30m'
YELLOW='\033[1;33m' 
PURPLE='\033[0;35m'    
CYAN='\033[0;36m'
STD='\033[0;0;39m'

bd(){
    read -p "press Enter to continue..." enterkey
}
n1()
{   
    read -p "Please enter User Name to register: " usname
    echo -e "${PURPLE}User name" $usname "added to the database${STD}"
    bd
}
n2()
{
    read -p "Please enter User Detail: " ud
	echo -e "${GREEN}User Detail" $ud "added to the database${STD}"
    bd
}
n3(){
	read -p "Please input data to edit User: " ue
	echo -e "${BROWN}User data" $ue "edited${STD}"
    bd
}
n4(){
	read -p "Please input user data to save: " us
	echo -e "${BLUE}User data" $us "edited${STD}"
    bd
}
n5(){
	read -p "Please enter password to change: " pc
	echo -e "${RED}Password changed${STD}"
    bd
}
n6(){
    read -p "Please enter report to print: " rc
	echo -e $rc "${YELLOW}\n report printed${STD}"
    bd
}
showmenu(){
    clear	
	echo -e "${CYAN}-------------M E N U-------------${STD}"
	echo -e "
	${PURPLE}1. Register User\n${STD}
	${GREEN}2. Users Details\n${STD}	
	${BROWN}3. Edit	User\n${STD}
	${BLUE}4. Save	User\n${STD}	
	${RED}5. Change Password\n	${STD}
	${YELLOW}6. Print Report\n${STD}
	${DARKGREY}7. Exit Menu${STD}
				"
}
select_option(){
	local choice
	read -p "Enter choice [ 1 - 7]: " choice
	case $choice in
		1) n1 ;;
		2) n2 ;;
		3) n3 ;;
		4) n4 ;;
		5) n5 ;;
		6) n6 ;;
		7) exit 0;;
		*) 
	esac
}
while true
do 
    showmenu
    select_option
done