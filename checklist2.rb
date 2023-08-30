class Checklist  #collection of tasks(description)
	attr_accessor :list ,:description ,:priority, #:task  #connect description to Checklist
	def initialize
		@list = []
		@description = description
		@priority = "Normal"
		# @task = Task.new(description)
	end
    
    # def make_list(description)
	# 	@task = Task.new(description)

	# 	@list << @task
	# 	puts "#{@task.description} has been added to the list."
    # end
    

	def make_list(description) #add description into selected list
		@list << description
	end

	def remove_description(description) #remove selected description from selected list
		@list.delete(description)   #if use .delete_at(index) use index number position of the element
	end

	def display_list
		@list.each_with_index do | list, index|
				if list.completed_task #calling method from Task class
					status = "[X]"
				else 
					status = "[ ]"
				end
		    puts "#{index +1} - #{status} - #{list.description}"
		end       #the index plus 1 so that numbering starts from 1, not zero!
	end
end