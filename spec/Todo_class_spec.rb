require 'Todo_class'

RSpec.describe ToDo do
  context "nothing is entered" do
    it "returns an empty list" do
      todo = ToDo.new
      expect(todo.return).to eq []
    end
  end

  context "adds a task to the list" do
    it "returns string in list" do
      todo = ToDo.new
      todo.add("walk the dog")
      expect(todo.return).to eq ["walk the dog"]
    end
  end

  context "adds two different entries to the list" do
    it "returns tasks in list" do
      todo = ToDo.new
      todo.add("walk the dog")
      todo.add("walk the cat")
      expect(todo.return).to eq ["walk the dog", "walk the cat"]
    end
  end

  context "removes completed tasks" do
    it "returns updated list" do
      todo = ToDo.new
      todo.add("walk the dog")
      todo.mark_complete("walk the dog")
      expect(todo.return).to eq []
    end
  end

  context "fails if a task is marked as complete that does not exist" do
    it "fails" do
      todo = ToDo.new
      todo.add("walk the dog")
      expect{todo.mark_complete("walk the sheep")}.to raise_error "No such task."
    end
  end
end