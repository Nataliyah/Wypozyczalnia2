class ApplicationController < ActionController::Base
  #http_basic_authenticate_with :name => "natalia", :password => "kicia"
  
  protect_from_forgery
  #force_ssl #tylko production i testing, nie development
  
  def redirect_back_or(path)
redirect_to :back
rescue ActionController::RedirectBackError
redirect_to path
end

private
 
  # WZIETE Z GUIDES
  # Finds the User with the ID stored in the session with the key
  # :current_user_id This is a common way to handle user login in
  # a Rails application; logging in sets the session value and
  # logging out removes it.
  def current_user
    @_current_user ||= session[:current_user_id] &&
      User.find_by_id(session[:current_user_id])
  end
  
  # Zwraca bool - czy uzytkownik jest zalogowany, czy nie
  def appHelper_ifUserLogged
    if session[:user_name] 
      return true
    end
    return false
  end

end
