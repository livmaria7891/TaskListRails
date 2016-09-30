class TasksController < ApplicationController
  def index
    @welcome_msg = "Things to do."
    @tasks = Task.all
  end

  #I don't understand why this is happening
  def new
    @this_task = Task.new
  end

  def create
    @params = params
    #and why is this here?
    @this_task = Task.new
    @this_task.name = params[:task][:name]
    @this_task.description = params[:task][:description]
    @this_task.completion_status = false
    @this_task.save
    redirect_to action: 'index'
  end

  def show
    @this_task = Task.find(params[:id].to_i)
  end


  def edit
    task
  end

  def update
  end

  def mark_complete
    task.completed_at = Time.now
    task.completion_status = true
    task.save
    redirect_to :index
  end

  def task
    @this_task ||= Task.find(params[:id].to_i)
  end

  def destroy
    task.destroy
    redirect_to :index
  end


  # def self.alltasks
  #   [
  #     {id: 1, name:"Become a Millionaire", description:"have at least one million dollars", completion_status: false, completed_at: nil},
  #     {id: 2, name:"Interview the President", description:"meet president, ask him about his favorite Thai restaurant", completion_status: false, completed_at: nil},
  #     {id: 3, name:"Eat an entire pizza, solo.", description:"eat a pizza by myself", completion_status: true, completed_at: "yesterday"}
  #   ]
  #   #name, description, completion status, and completion date.
  # end
end
