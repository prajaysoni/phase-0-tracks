class TodoList

	def initialize(todo)
		@todo = todo
	end 

	def get_items()
		@todo
	end

	def add_item(itm)
		@todo << itm
	end

	def delete_item(itm)
		@todo.delete(itm)
	end

	def get_item(idx)
		@todo[idx]
	end


end