class SessionsController < ApplicationController
  def new
  end
  def create
    # get the user by session params passed in from the login form in sessions/new.html.erb
    user = User.find_by(username: params[:session][:username].downcase)
     if user && user.authenticate(params[:session][:password])
       session[:user_id] = user.id
       session[:username] = user.username
       redirect_to root_url, notice: "User: #{session[:username]} logged in!"
     else
       # flash.now is used to display the message on the current page without redirecting.
       flash.now.alert = "Username or password is invalid"
       render "new"
     end
  end
  def destroy
    session[:user_id] = nil
    session[:username] = nil
    redirect_to root_path, notice: "User: #{session[:username]} logged out!"
  end
end