class InstructorsController < ApplicationController
  before_action :require_user , except: [:new, :create]
  def new
    @instructor = Instructor.new
  end

  def create
    @instructor = Instructor.new(instructor_params)
    if @instructor.save
      session[:user_id] = @instructor.id
      redirect_to @instructor
    else
      render 'new'
    end
  end

  def show
    @instructor = Instructor.find(params[:id])
  end

  def edit
    @instructor = Instructor.find(params[:id])
  end

  def update
    @instructor = Instructor.find(params[:id])
    if @instructor.update(instructor_params)
      redirect_to @instructor
    else
      render 'edit'
    end
  end

  def index
    @instructors = Instructor.all
  end

  private



  def instructor_params
    params.require(:instructor).permit(:first_name, :last_name, :age, :salary, :education, :email, :password)
  end


end
