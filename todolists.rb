require './task'
require './checklist'



# testing code
checklist1 = Checklist.new
puts "________"
checklist1.add_list("Ice cream") # if type task,it only show #<Task:0x000001c218f99df0>
checklist1.add_list("Chocolate")
checklist1.add_list("Cake")
checklist1.display_list
puts "Find title to mark complete"
cake = checklist1.list[2] #need iterate the array 1st to choose
cake.completed_task
checklist1.display_list
puts "Remove title"
checklist1.remove_title(1)
checklist1.display_list

# checklist1.add_list("Mayo") #put directly Mayo also can
# checklist1.add_list(task2.title)
# puts "________"
# puts "Task to be done: #{task1.priority}"
# puts "Task completion: #{task1.completed_task}"
# puts "Task completion: #{task2.completed?}"
# puts "User in charge of task: #{task1.assigning_user("Mia")}"
# puts "Due date: #{task1.set_due_date("8pm")}"
# puts "________"
# checklist1.display_list

# puts "________"
# checklist1.remove_title("Icecream")

# checklist1.display_list




# checklist2 = Checklist.new
# checklist2.add_list(task1) #the task1 from Task class #after make add_list method, no need manually type this
# checklist2.add_list(task2) #the task1 from Task class
# checklist2.add_list(todo) #testing naming
# checklist2.display_list


# puts checklist1.list #output Task:random characters, will not show title yet because not yet call
# checklist1.list.each { |task| puts task.title } #to iterate elements in a Array --https://stackoverflow.com/questions/310634/what-is-the-right-way-to-iterate-through-an-array-in-ruby
# checklist1.remove_title(task1)
# puts "________"
# checklist1.list.each { |task| puts task.title } #after call remove_title to delete selected title