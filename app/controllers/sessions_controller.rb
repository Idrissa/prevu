class SessionsController < ApplicationController
  def new
  end

  def create
    user = Adherent.authenticate(params[:matricule], params[:password])
    if user
      session[:adherent_id] = user.id
      redirect_to root_url, :notice => "Logged in!"
    else
      flash.now.alert = "Invalid matricule or password"
      render "new"
    end
  end

  def destroy
    session[:adherent_id] = nil
    redirect_to root_url, :notice => "Logged out!"
  end
end
