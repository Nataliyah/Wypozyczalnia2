class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = User.find_by_login(params[:login])
    
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      session[:user_name] = user.login
      session[:user_admin] = user.admin
      redirect_to root_url, :notice => "Logowanie powiodlo sie"
    else
      flash.now[:error] = "Niepoprawne login lub haslo"
      render "new"
    end
  end
  
  def destroy
    session[:user_id] = nil
    session[:user_name] = nil
    session[:user_admin] = nil
    redirect_to root_url, :notice => "Uzytkownik wylogowany"
  end
  
end
