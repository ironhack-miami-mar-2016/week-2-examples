class TodoList
    attr_reader :tasks
    def initialize
        @tasks = []
    end

    def add_task(task_to_add)
      @tasks.push(task_to_add)
    end

    def delete_task(task_id)
      @tasks.delete_if { |the_task| the_task.id == task_id }
    end
end
