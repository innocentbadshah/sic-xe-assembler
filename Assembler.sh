printf "\n\n-----------------SIC/XE Assembler-----------------"
printf "\n\nDo you want to start assembler ?\n\n1)Yes\n2)No\n\n"
read wantit
        printf "\n\nThis is a SIC/XE assmbler. It contains files pass*.cpp and csect.cpp\nThe csect.cpp contains algorithm to convert a file which has control sections in it.\nThe other pass*.cpp can't generate Control section but the process is faster as it has no reading section from a Instruction set.\n"
        printf "\nYou will be prompted for input filename and choice.\nYou can either keep your file in directory or can give path-to-dir\nErrors occuring due to wrong choices would be stored in error.txt\nTwo testfiles are provided in directory input.txt(no control section) & cinput.txt(has control section)"
    if [ "$wantit" = "1" ]; then
        printf "\n\nDoes your code contain Control Section\n\n1)Yes\n2)No\n3)I've no idea\n\n";
        read isCsect
        if [ "$isCsect" = "1" ] || [ "$isCsect" = "3" ]; then
            make cassembler
            make assembler
            printf "What is filename ?\n\n"
            read cinput
            ./assembler $cinput
            ./csect $cinput
            
            printf "\n\nThe error in error.txt and log is actually due to its occurence in normal 2 pass assembler you can ignore this\n\nDo you want to clear the files for input again\n\n1)Yes\n2)No\n\n"
            read yesno
            if [ "$yesno" = "1" ]; then
                rm csect;
	            rm modification.txt
	            rm object.txt 2>/dev/null
	            rm list.txt 2>/dev/null
	            rm intermediate.txt 2>/dev/null
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
	            rm modification.txt
	            rm object.txt 2>/dev/null
	            rm list.txt 2>/dev/null
	            rm intermediate.txt 2>/dev/null
            else
                printf "Goodbye :) :)"
                exit;
            fi
        fi
    else
        printf "goodbye"
        exit;

    fi
