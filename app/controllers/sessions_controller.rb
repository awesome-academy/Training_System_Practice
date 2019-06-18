class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user&.authenticate(params[:session][:password])
      log_in user
      flash[:success] = t "message.msg1"
      check_active_user user
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
  private

  def remember_check checked, user
    checked == Settings.checked ? remember(user) : forget(user)
  end

  def check_active_user user
    if user.activated?
      log_in user
      remember_check params[:session][:remember_me], user
      redirect_back_or user
    else
      flash[:warning] = t "message.msg3"
      redirect_to root_url
    end
  end
end
