class SessionsController < ApplicationController
  def new
  end

  def create
    @instructor = Instructor.find_by_email(params[:session][:email])
      if @instructor && @instructor.authenticate(params[:session][:password])
          session[:user_id] = @instructor.id
          redirect_to '/'
      else
        redirect_to pages_home_path
      end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/'
  end
end
