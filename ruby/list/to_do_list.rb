class To_do_list
	attr_reader :list
	
	def initialize(list)
		@list = list
	end

	def get_items
		@list
	end

	def add_item(item_to_add)
		@list << item_to_add
	end

	def delete_item(item_to_delete)
		@list.delete(item_to_delete)
	end

	def get_item(item_index)
		@list[item_index]
	end

end