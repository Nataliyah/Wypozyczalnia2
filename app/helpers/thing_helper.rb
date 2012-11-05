module ThingHelper
  
  # Funkcja sprawdza czy zdjecie jest prawidlowym plikiem
  # Pobiera string ze sciezka do zdjecia
  # Zwraca bool - w zaleznosci od tego czy string jest prawidlowy
  def is_proper_photo (photo_str)
    if (photo_str && photo_str.size>0) 
      return true
    end
    return false
  end
  
  # Funkcja sprawdza czy dany przedmiot ma status wolny
  # Pobiera date oddania
  # Zwraca bool - w zaleznosci od tego czy string jest prawidlowy
  def is_status_free (date)
    that_date = date
    return that_date < Date.today 
    #komentarz na przyszlosc: #Date.new(2009,6,13)
  end
  
end
