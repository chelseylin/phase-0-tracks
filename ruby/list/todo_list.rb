class TodoList
  def initialize(list_array)
    @items = list_array
  end

  def get_items
    @items
  end

  def add_item(task)
    @items << task
  end
end