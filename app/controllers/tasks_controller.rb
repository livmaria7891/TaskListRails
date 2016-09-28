class TasksController < ApplicationController
  def index
  end

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def self.alltasks
    tasks = [
      {id: 1, name:"Become a Millionaire", description:"have at least one million dollars", completion_status: false, completed_at: nil},
      {id: 2, name:"Interview President", description:"meet president, ask him about his favorite Thai restaurant", completion_status: false, completed_at: nil},
      {id: 3, name:"Eat an entire pizza, solo.", description:"eat a pizza by myself", completion_status: true, completed_at: "yesterday"}
    ]
    #name, description, completion status, and completion date.
  end
end
