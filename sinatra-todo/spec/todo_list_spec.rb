require_relative "../lib/todo_list.rb"
require_relative "../lib/task.rb"

RSpec.describe TodoList do
  describe "#delete_task" do
    it "deletes task with given id" do
      list = TodoList.new
      task1 = Task.new("Active SunPass")
      task2 = Task.new("Vacuum 2nd floor")
      task3 = Task.new("Go to the gym")

      list.add_task(task1)
      list.add_task(task2)
      list.add_task(task3)

      list.delete_task(task2.id)

      expect(list.tasks).not_to include(task2)
    end
  end
end
