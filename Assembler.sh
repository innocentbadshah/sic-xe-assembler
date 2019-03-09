printf "\n\n-----------------SIC/XE Assembler-----------------"
printf "\n\nDo you want to start assembler ?\n\n1)Yes\n2)No\n"
read wantit
        printf "\n\nThis is a SIC/XE assmbler. It contains files pass*.cpp and csect.cpp\nThe csect.cpp contains algorithm to convert a file which has control sections in it.\nThe other pass*.cpp can't generate Control section but the process is faster as it has no reading section from a Instruction set.\nTo execcute a file which has Control section you can add it to input.txt while If not you can add it to input_fibonacci.txt\nThe outputs would be displayed in object.txt and csect.txt.\n" 
    if [ "$wantit" = "1" ]; then
        printf "\n\nDoes your code contain Control Section\n\n1)Yes\n2)No\n3)I've no idea\n\n";
        read isCsect
        if [ "$isCsect" = "1" ] || [ "$isCsect" = "3" ]; then
            make cassembler
            printf "What is filename ?\n\n"
            read cinput
            ./csect $cinput
            printf "\n\nDo you want to clear the files for input again\n\n1)Yes\n2)No\n\n"
            read yesno
            if [ "$yesno" = "1" ]; then
                rm csect;
            else
                printf "Goodbye :) :)"
                exit;
            fi
        else
            make assembler
            printf "What is filename ?\n\n"
            read input
            ./assembler $input
            printf "\n\nDo you want to clear the files for input again\n\n1)Yes\n2)No\n\n"
            read yesno
            if [ "$yesno" = "1" ]; then
                rm assembler 2>/dev/null
	            echo > modification.txt 2>/dev/null
	            echo > object.txt 2>/dev/null
	            echo > list.txt 2>/dev/null
	            echo > intermediate.txt 2>/dev/null
            else
                printf "Goodbye :) :)"
                exit;
            fi
        fi
    else
        printf "goodbye"
        exit;

    fi
