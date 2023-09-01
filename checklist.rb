class Checklist  # collection of tasks
	attr_accessor :list, :title, :priority # connect title to Checklist
	 
	def initialize(title)
		@list = []
		@title = title
		@priority = "Normal"
	end
    
    def add_list(task)
		task = Task.new(task)

		@list << task
		puts "#{task.title} has been added to the list."
    end
    
	# def remove_title(title) #remove selected title from selected list
	# 	@list.delete(title)   #if use .delete_at(index) use index number position of the element
	# end

	def remove_title(index)
		@list.delete_at(index -1)
	end

	def display_list
		@list.each_with_index do | list, index|
				if list.completed? #calling method from Task class
					status = "[X]"
				else 
					status = "[ ]"
				end
		    puts "#{index +1} - #{status} - #{list.title}"
		end       #the index plus 1 so that numbering starts from 1, not zero!
	end
end