require './task'
require './checklist'
@list = []
puts "Hello there! What do you want to do today?"
loop do
    puts "1 - Make a new list"
    puts "2 - Add item to the list"
    puts "3 - Display item"
    puts "4 - Remove item by index"
    puts "5 - Mark item completed"
    puts "6 - "
    puts "8 - Exit"
    option = gets.chomp.to_i
    case option
        when 1
        	puts "Type your new list name"
        	name = gets.chomp
    	    @list = Checklist.new(name)
    	    puts "Your new list #{name} has been created."

    	when 2
    		puts "Enter your task into the list"
    		task = gets.chomp
            @list.add_list(task)

        when 3
        	puts "_______________"
        	@list.display_list
            puts "_______________"

        when 4
        	puts "Choose item index to remove"
        	index = gets.chomp.to_i
            @list.remove_title(index -1)
            puts "This is the new list after remove"

        when 5
        	puts "Choose which item index to mark"
        	index = gets.chomp.to_i
        	task = @list.list[index -1] #eg:rice = FOOD.list[index]
        	task.completed_task

        else 8
        	puts "Exit App"
        exit 
    end  
    
end