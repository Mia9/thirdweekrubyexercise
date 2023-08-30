require './checklist'
class Task
	attr_accessor :description, :completed, :due_date, :assign_user, :priority
	def initialize(description)
		@description = description
		@completed = false
		@due_date = nil
		@assign_user = []
		@priority = "Normal"
	end

	def completed_task
		@completed = true
	end

	def completed?
		@completed	
	end

	def assigning_user(user)
		@assign_user << user
	end

	def set_due_date(date)
		@due_date = date
	end

	def remove_user(user)
		@assign_user.delete(user)
	end

	def priority_high
		@priority = "High"
	end

	def priority_low
		@priority = "Low"
	end

end



#testing code
task1 = Task.new("Icecream!") #after make make_list method, no need manually type this
# puts task1.description      
task2 =Task.new("Food")
todo = Task.new("Fruit")
puts task1.completed_task
puts task1.assigning_user("Mia")
puts task1.set_due_date("8pm")

puts "________"

# checklist1 = Checklist.new
# checklist1.make_list(task1) #the task1 from Task class #after make make_list method, no need manually type this
# checklist1.make_list(task2) #the task1 from Task class
# checklist1.make_list(todo) #testing naming
# checklist1.display_list
checklist2 = Checklist.new
checklist2.make_list(task1.description)#if type task,it only show #<Task:0x000001c218f99df0>
checklist2.make_list("Mayo")
checklist2.display_list


# puts checklist1.list #output Task:random characters, will not show description yet because not yet call
# checklist1.list.each { |task| puts task.description } #to iterate elements in a Array --https://stackoverflow.com/questions/310634/what-is-the-right-way-to-iterate-through-an-array-in-ruby
# checklist1.remove_description(task1)
# puts "________"
# checklist1.list.each { |task| puts task.description } #after call remove_description to delete selected description