class SessionsController < ApplicationController
    def index

    end
    def create
      @user = User.from_auth( request.env["omniauth.auth"])
  #keeps me from having to authenticating each time
    session[:user_id] = @user.id
      redirect_to "/"
    end
    def destroy
      session.clear
      redirect_to "/"
    end
end
