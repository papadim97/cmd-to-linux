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

echo "GIVE COMMAND CMD :   (help, dir , dir all, )"
read command parameter parameterr
if [ "$command" == "help" ] && [ "$parameter" == "" ];
then
	echo "-------------"
	echo "help"
	echo "help parameter"
	echo "dir"
	echo "dir all"
	echo "cls"
	echo "exit(back to bash)"
	echo "copy"
	echo "move"
	echo "rename"
	echo "del"
	echo "rd"

	#man $parameter
elif [ "$command" == "help" ] && [ "$parameter" != "" ];
then
	man $parameter
elif [ "$command" == "dir" ] && [ "$parameter" == "" ];
then
	ls
elif [ "$command" == "dir" ] && [ "$parameter" == "all" ];
then
	ls -al
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
	echo "Dont Find!"
fi
done
