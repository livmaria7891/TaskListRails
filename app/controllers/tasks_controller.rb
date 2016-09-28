class TasksController < ApplicationController
  def index
    @welcome_msg = "Things to do."
    @tasks = TasksController.alltasks
  end

  def new
  end

  def create
  end

  def show
    @tasks = TasksController.alltasks
    @this_task = nil

    @tasks.each do |t|
      num = params[:id].to_i
      if t[:id] == num
        @this_task = t
      end
    end
  end


  def edit
  end

  def update
  end

  def destroy
  end

  def self.alltasks
    [
      {id: 1, name:"Become a Millionaire", description:"have at least one million dollars", completion_status: false, completed_at: nil},
      {id: 2, name:"Interview the President", description:"meet president, ask him about his favorite Thai restaurant", completion_status: false, completed_at: nil},
      {id: 3, name:"Eat an entire pizza, solo.", description:"eat a pizza by myself", completion_status: true, completed_at: "yesterday"}
    ]
    #name, description, completion status, and completion date.
  end
end
