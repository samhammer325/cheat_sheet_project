
# Menu that takes in user input
# List command line options
# Allow user to return to menu
# Display man pages for the command line options
#
# List IDE shortcuts
# Display info about shortcut
# Let user return


def terminal_commands
	while true
		puts "\nType in a number to see its manual page:"
		puts "1. ls: view files in current directory. ls -a: see hidden files."
		puts "2. mv: move a file or a directory or rename files. mv file.txt /destination/file.txt"
		puts "3. cd: change to a new directory. "
		puts "4. touch: make a new file. touch filename.txt"
		puts "5. cat: view a file in the terminal. cat filename.txt"
		puts "6. grep: find a string of characters in a file. grep 'findthis' file.txt"
		puts "7. return to main menu"

		entered_command = gets.strip
		case entered_command
		when "1"
			puts `man ls`
		when "2"
			puts `man mv`
		when "3"
			puts `man cd`
		when "4"
			puts `man touch`
		when "5"
			puts `man cat`
		when "6" 
			puts `man grep`
		when "7"
			return
		else
			puts "Please type a number 1-7"
		end
	end
end

def ide_commands
	while true
		puts "\nType in a number to see more information about the vim command."
		puts "1. h j k and l"
		puts "2. dd"
		puts "3. v"
		puts "4. ctrl V"
		puts "5. y d and p"
		puts "6. esc"
		puts "7. return to main menu"
		shortcut = gets.strip

		case shortcut 
		when "1"
			puts "Move around the text editor when in normal mode.    h: left j: down k: up l: right"
		when "2" 
			puts "Delete a line when in normal mode."
		when "3"
			puts "Enter visual mode. You can select lines of text."
		when "4"
			puts "Enter visual block mode. Select multiple blocks and then edit them all by pressing shift I,"
			puts "then type what you want, and press escape."
		when "5" 
			puts "When in visual mode, y becomes copy and d becomes cut. press p to paste."
		when "6"
			puts "Enter normal mode. Allows you to move around and use commands. press i or a to enter insert mode."
		when "7"
			return
		else puts "Please type a number 1-7"
		end
	end
end

def search_command
	while true
		puts "Enter a terminal command to see if there is a man page for it. press q to exit to main menu."
		man_command = gets.strip
		if man_command == "q" || man_command == "Q"
			return
		end
		puts `man #{man_command}`
	end
end


def main_menu
	exit_program = false
	while exit_program == false
		puts "\nTerminal commands cheat sheet"
		puts "1. Command line."
		puts "2. IDE."
		puts "3. Search. find the terminal manual page for a unix command."
		puts "4. Quit."
		selection = gets.strip

		if selection == "1" || selection == "command line"
			terminal_commands
		elsif selection == "2" || selection == "IDE" || selection == "ide"
			ide_commands
		elsif selection == "3" || selection == "Search" || selection == "search"
			search_command
		elsif selection == "4" || selection == "quit" || selection == "Quit"
			exit_program = true
		else
			puts "Please enter a number 1-3"
		end
	end
end

main_menu


