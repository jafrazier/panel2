class CohortsController < ApplicationController
  

  def new
    @instructors = Instructor.all
    @students = Student.all
    @courses = Course.all
    @cohort = Cohort.new
  end

  def create
    @instructors = Instructor.all
    @students = Student.all
    @courses = Course.all
    @cohort = Cohort.new(cohort_params)
    if @cohort.save
      redirect_to @cohort
    else
      render 'new'
    end
  end

  def show
    @cohort = Cohort.find(params[:id])
  end

  def edit
    @instructors = Instructor.all
    @students = Student.all
    @courses = Course.all
    @cohort = Cohort.find(params[:id])
  end

  def update
    @instructors = Instructor.all
    @students = Student.all
    @courses = Course.all
    @cohort = Cohort.find(params[:id])
    if @cohort.update(cohort_params)
      redirect_to @cohort
    else
      render 'edit'
    end

  end

  def index
    @cohorts = Cohort.all
  end


  private

  def cohort_params
    params.require(:cohort).permit(:name, :start_date, :end_date, :course_id, :student_id, :instructor_id)
  end
end
