class Task
	attr_accessor :title, :completed, :due_date, :assign_user, :priority
	def initialize(title)
		@title = title
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