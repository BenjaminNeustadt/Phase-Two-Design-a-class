class ToDo

  def initialize
    @list = []
  end

  def add(text)
    @list << text
  end

  def mark_complete(text)
    fail "No such task." unless @list.include? text
    @list.delete_if {|i| i == text}
  end

  def return
    @list
  end

end