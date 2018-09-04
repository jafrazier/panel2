class StudentsController < ApplicationController
  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to @student
    else
      render 'new'
    end
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
  end

  def index
    @students = Student.all
  end

  private

  def student_params
    parmas.require(:student).permit(:first_name, :last_name, :age, :education)
  end
end
