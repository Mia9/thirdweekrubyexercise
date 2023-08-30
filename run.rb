require './task'
require './checklist'

loop do
	@list = []
	puts "Hello there! What do you want to do today?"
    puts "1 - Make a new list"
    puts "2 - Add to the list"
    puts "3 - Exit"

    option = gets.chomp.to_i

    case option
        when 1
        	puts "Type your new list name"
        	name = gets.chomp
    	    @list = Checklist.new
    	    @list = name
    	    puts "Your new list #{name} has been created."

    	when 2
    		puts "Enter your task into the list"
    		task = gets.chomp
            @list.add_list(task)
            
        else 3
        	puts "Exit App"
        exit 
    end  
    
end