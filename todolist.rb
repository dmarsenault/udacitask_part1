class TodoList
    attr_reader :title, :items

    def initialize(list_title)
      @title = list_title
      @items = Array.new
    end

    def update_title(new_title)
      @title = new_title
    end

    def add_item(new_item)
      item = Item.new(new_item)
      @items.push(item)
    end

    def delete_item(item_id)
      @items.delete_at(item_id)
    end

    def divider
      print "~" * 40
    end

    def print_description
      @items.each do |description|
        description.print_items
      end
    end

    def toggle_completion(item_id)
      @items.at(item_id).toggle_status
    end

    def print_list
      puts " "
      puts @title
      puts divider
      puts print_description
    end
end


class Item
    attr_reader :description, :completion_status

    def initialize(item_description)
      @description = item_description
      @completion_status = "( )"
    end

    def toggle_status
      @completion_status = "(X)"
    end

    def print_items
      puts "#{@completion_status} ----- #{@description}"
    end

end
