class TodoList
  def initialize(list_array)
    @items = list_array
  end

  def get_items
    @items
  end

  def get_item(index)
    @items[index]
  end

  def add_item(task)
    @items << task
  end

  def delete_item(task)
    @items.delete(task)
  end
end