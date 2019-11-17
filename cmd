#!/bin/bash
clear
echo "  ====      //\\    //\\      ||==="
echo " ==        //  \\  //  \\     ||   =="
echo "==        //    \\//    \\    ||    =="
echo "==       //              \\   ||    =="
echo " ==     //                \\  ||   =="
echo "  ==== //                  \\ ||==="
echo "help dir cls exit copy rename move del rd"
i=0
while [ $i -lt 1 ];do

echo "GIVE COMMAND CMD :   (help ls)"
read command parameter parameterr
if [ "$command" == "help "];
then
	man $parameter
elif [ "$command" == "dir" ];
then
	ls
elif [ "$command" == "cls" ];
then
	clear
elif [ "$command" == "exit" ];
then
	exit
elif [ "$command" == "copy" ];
then
	cp -rf  $parameter $parameterr
elif [ "$command" == "move" ];
then
    	mv -rf $parameter $parametterr
elif [ "$command" == "rename" ];
then
        mv -rf $parameter
elif [ "$command" == "del" ];
then
        rm -rf $parameter 
elif [ "$command" == "rd" ];
then
        rm-r  $parameter 
else
	echo "Dont Find! "
fi
done
