class SessionsController < ApplicationController
  def new
  end
  
  def destroy
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      #log the user in
    else
      render 'new'
    end
end
