class SessionsController < ApplicationController
  def new
    @titre = "S'identifier"
  end

  def create

    user = User.authenticate(params[:session][:email],
                          params[:session][:password])
    if user.nil?
      @titre = "S'identifier"
      @error_message = "La combinaison Email/Mot de passe est incorrecte."
      render 'sessions/new'
    else
      sign_in user
      redirect_to :controller => 'users', :action => 'index'
    end
  end

  def destroy
  end
end
