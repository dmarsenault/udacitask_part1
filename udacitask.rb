require_relative 'todolist.rb'

# Creates a new todo list
todo_list = TodoList.new("
,-.              . p       ,          .
|  |         o   |         |    o     |
|  | ,-: . , . ,-|   ,-.   |    . ,-. |-
|  / | | |/  | | |   `-.   |    | `-. |
`-'  `-` '   ' `-'   `-'   `--' ' `-' `-'")
# Add four new items
todo_list.add_item("Learn Ruby")
todo_list.add_item("Make dinner")
todo_list.add_item("Fix the internet")
todo_list.add_item("Go to Target")
# Print the list
todo_list.print_list
# Delete the first item
todo_list.delete_item(0)
# Print the list
todo_list.print_list
# Delete the second item
todo_list.delete_item(1)
# Print the list
todo_list.print_list
# Update the completion status of the first item to complete
todo_list.toggle_completion(0)
# Print the list
todo_list.print_list
# Update the title of the list
todo_list.update_title("
,-.              . p       ,---.           .       ,          .
|  |         o   |           |             |       |    o     |  
|  | ,-: . , . ,-|   ,-.     |   ,-. --- ,-| ,-.   |    . ,-. |-
|  / | | |/  | | |   `-.     |   | |     | | | |   |    | `-. |
`-'  `-` '   ' `-'   `-'     '   `-'     `-' `-'   `--' ' `-' `-'")
# Print the list
todo_list.print_list
