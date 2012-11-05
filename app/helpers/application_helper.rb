module ApplicationHelper
  
  # Zwraca bool - czy uzytkownik jest zalogowany, czy nie
  def appHelper_ifUserLogged
    if session[:user_name] 
      return true
    end
    return false
  end
  
  #Zwraca bool - czy uzytkownik jest adminem
  def appHelper_ifAdmin
    if session[:user_admin]
      return true
    end
    return false
  end
end
