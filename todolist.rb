class TodoList
    attr_reader :title, :items

    def initialize(list_title)
      @title = list_title
      @items = Array.new
    end

    def add_item(new_item)
      item = Item.new(new_item)
      @items.push(new_item)
    end

    def delete_item(item_id)
      @items.delete_at(item_id)
    end

    def divider
      puts "~" * 40
    end

    def print
      puts @title
      puts divider
      puts @items
    end
end


class Item
    attr_reader :description, :completion_status

    def initialize(item_description)
      @description = item_description
      @completion_status = false
    end
end
