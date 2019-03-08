assembler: pass2.cpp
	     @g++ -o assembler pass2.cpp
clean:
	@rm assembler 2>/dev/null
	@echo > modification.txt 2>/dev/null
	@echo > object.txt 2>/dev/null
	@echo > list.txt 2>/dev/null
	@echo > intermediate.txt 2>/dev/null	
