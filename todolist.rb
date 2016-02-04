class TodoList
    attr_reader :title, :items

    def initialize(list_title)
      @title = list_title
      @items = Array.new
    end

    # Change the name of the title
    def update_title(new_title)
      @title = new_title
    end

    # Add a new item to the list
    def add_item(new_item)
      item = Item.new(new_item)
      @items.push(item)
    end

    # Remove an item from the list
    def delete_item(item_id)
      @items.delete_at(item_id)
    end

    # Used to divide title from items on list
    def divider
      print "~" * 65
    end

    # Uses toggle_status to mark an item in list as complete
    def toggle_completion(item_id)
      @items.at(item_id).toggle_status
    end

    # Outputs the total number of tasks on the list.
    def total_list
      @items.length
    end

    # Prints list
    def print_list
      puts " "
      puts @title
      puts divider
      @items.each { |description| description.print_items }
      puts "Total tasks: #{total_list}"
    end
end


class Item
    attr_reader :description, :completion_status

    def initialize(item_description)
      @description = item_description
      @completion_status = "( )"
    end

    # Changes completion from ( ) to (X)
    def toggle_status
      @completion_status = "(X)"
    end

    # Allows list to print both completion status and item description
    def print_items
      puts "#{@completion_status} ~~~~ #{@description}"
    end
end
