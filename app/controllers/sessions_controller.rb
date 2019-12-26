class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to '/restaurants', notice: "Ласкаво просимо!"
    else
      flash.now[:alert] = "Електронна пошта або пароль недійсні"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/restaurants', notice: "До зустрічі!"
  end
end
