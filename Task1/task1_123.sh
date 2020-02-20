#!/bin/bash
#studentnumber - 10502149
#studentname - HTET OO WAI YAN
bd(){
    read -p "press Enter to continue..." enterkey
}
n1()
{   
    read -p "Please enter folder name: " foldername
    echo "Created folder" $foldername "in the Documents"
    mkdir $foldername
    bd
}
n2()
{
    ls /home
    bd
}
n3(){
	ls -a
	bd
}
showmenu(){
    clear
	echo "--------------------------"	
	echo " S E L E T - O P T I O N"
	echo "--------------------------"
	echo "1. Create folders"
	echo "2. files in the folder"
	echo "3. list all content of the folder "
	echo "4. Exit"
}
select_option(){
	local choice
	read -p "Enter choice [ 1 - 4]: " choice
	case $choice in
		1) n1 ;;
		2) n2 ;;
		3) n3 ;;
		4) exit 0;;
		*) 
	esac
}
while true
do 
    showmenu
    select_option
done

