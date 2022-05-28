Todo Class Design Recipe

## 1. Describe the Problem
_Put or write the user story here. Add any clarifying notes you might have._

> As a user
> So that I can keep track of my tasks
> I want a program that I can add todo tasks to and see a list of them.

> As a user
> So that I can focus on tasks to complete
> I want to mark tasks as complete and have them disappear from the list.

## 2. Design the Class Interface
_Include the initializer and public methods with all parameters and return values._

```ruby
class TodoList

  def initializer
    @list = []
  end

  def add(text) # text is a task in form of string
    @list << text
  end

  def mark_complete(text) # text is a task in form of string that either exists or not in @list
    #if text is already in @list, remove it from the list
    #FAILS if the task doesnt  exist
  end

  def return
    return @list
  end
end


# EXAMPLE

## 3. Create Examples as Tests
Make a list of examples of how the class will behave in different situations.

# EXAMPLE

# 1
# todo = ToDo.new
# expect(todo.add("")).to eq []

# 2
# todo = ToDo.new
# expect(todo.add("walk the dog")).to eq ["walk the dog"]

# 3
# todo = ToDo.new
# todo.add("walk the dog")
# todo.add("walk the cat")
# expect(todo.return).to eq ["walk the dog", "walk the cat"]

# 3
# todo = ToDo.new
# todo.add("walk the dog")
# todo.mark_complete("walk the dog")
# expect(todo.return).to eq []

# 3
# todo = ToDo.new
# todo.add("walk the dog")
# todo.mark_complete("wash the hat")
# todo.return => fails "No such task."



## 4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.