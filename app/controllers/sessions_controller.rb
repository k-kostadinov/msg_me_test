class SessionsController < ApplicationController
  before_action :logged_in_redirect, only: [:create, :new]

  def create
    usr = User.find_by(username: params[:session][:username].downcase)
    if usr && usr.authenticate(params[:session][:password])
      session[:user_id] = usr.id
      flash[:success] = 'LOG IN OK'
      redirect_to root_path
    else
      flash.now[:error] = 'WRONG LOG IN DATA'
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = 'succesfull logout'
    redirect_to login_path
  end

  private

  def logged_in_redirect
    if logged_in?
      flash[:error] = "Already logged in"
      redirect_to root_path
    end
  end
end