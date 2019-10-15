#!bin/bash
function create_directory()
{
        echo "Enter directory name"
        read dir_name

        mkdir $dir_name
        echo "Directory is created"
}

function create_file()
{
        echo "Enter file name"
        read file_nm

        touch $file_nm
        echo "File is created"

}

function move_file()
{
	
        echo "Enter file you want to move: "
        read f1

        echo "Enter where to move: "
        read d1

        if [ -f $f1 ]
                then 
                        if [ -d $d1 ]
                        then 
                        mv $f1 $d1
                        fi
        else
        echo "File not exist"
        fi 
}

function compress_file()
{
    add_files
    tar -czf archive.tar.gz $emp.txt
    
}

function Extract_file()
{
        tar -xf archive.tar.gz $emp.txt
}
function content_of_file()
{
        echo "create text file"
        read file

        touch $file
        nano $file

        echo "Enter file name to see the content of that file"
        read filename

        cat $filename

}

echo "Menu"
echo "1. create directory "
echo "2.create_file"
echo "3.content_of_file"
echo "4.move_file"
echo "5.compress_file "
echo "6.Extract_file"
echo "6. Exit"


echo "Enter your choice : "
read ch

case "$ch" in
1) 
        create_directory;;

2)      create_file;;


3)      content_of_file;;

4)      move_file;;

5)      compress_file;;

6)      Extract_file;;

7) echo "Exit..."
        exit;;
esac




