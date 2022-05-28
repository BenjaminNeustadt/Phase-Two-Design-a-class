PhoneBook Class Design Recipe
## 1. Describe the Problem
_Put or write the user story here. Add any clarifying notes you might have._

> As a user
> So that I can keep track of my phone numbers
> I want to keep a record of all phone numbers I use in my entries


## 2. Design the Class Interface
_Include the initializer and public methods with all parameters and return values._


```ruby
class PhoneBook
  def initializer
    # ...
  end

  def extract_numbers (text)
    # Returns nothing
    # could be something like:
    # text.split(" ").each {|a| a.length == 11 && a.integer?}
    #   [] << a
    # end
  end

  def list
# Returns a list of string representing phone numbers
  end
end

```

## 3. Create Examples as Tests
Make a list of examples of how the class will behave in different situations.

# EXAMPLE

```ruby
# 1
# phone_book = PhoneBook.new
# phone_book.list # => []

# 2
# phone_book = PhoneBook.new
# phone_book.extract_numbers("07596802695")
# phone_book.list # => ["07596802695"]

# 3
# phone_book = PhoneBook.new
# phone_book.extract_numbers("I was calling my friend 07596802695 the other day")
# phone_book.list # => ["07596802695"]

# 4
# phone_book = PhoneBook.new
# phone_book.extract_numbers("My faves: 07596802695, 07889982345")
# phone_book.list # => ["07596802695", "07889982345"]

# 5
# phone_book = PhoneBook.new
# phone_book.extract_numbers("My faves: ")
# phone_book.list # => []

# 6
# phone_book = PhoneBook.new
# phone_book.extract_numbers("My friend George is 07596802695")
# phone_book.extract_numbers("My friend Sarah is 075968027777")
# phone_book.list # => ["07596802695", "075968027777"]

# 7 - too few digits
# phone_book = PhoneBook.new
# phone_book.extract_numbers("My friend George is 075968026")
# phone_book.list # => []

# 8 - no duplpicates
# phone_book = PhoneBook.new
# phone_book.extract_numbers("My friend George is 07800000000")
# phone_book.extract_numbers("My mate George is 07800000000")
# phone_book.list # => ["07800000000"]

```
## 4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.