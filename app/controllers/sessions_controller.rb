class SessionsController < ApplicationController
  def new
  end
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      flash[:success] = t "message.msg1"
      params[:session][:remember_me] == Settings.remember ? remember(user) : forget(user)
      redirect_to user
    else
      flash.now[:danger] = t "message.msg2"
      render :new
    end
  end
  def destroy
    log_out if logged_in?
    flash[:success] = t "message.msg3"
    redirect_to root_url
  end
end
