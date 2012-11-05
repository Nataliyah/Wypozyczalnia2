class LendingsController < ApplicationController
  before_filter :require_login
  
  def index
    @lendings = Lending.all
  end
      
  def create
    @lending = Lending.new(params[:lending])
    #render :text => params[:lending][:thing_id]
     
    respond_to do |format| 
      if @lending.save
        format.html { redirect_to @lending.thing, notice: 'Przedmiot pozyczony' }
      else
        format.html { redirect_to @lending.thing, notice: 'Nie udalo sie pozyczyc przedmiotu' }
      end
    end
  end
  
  def destroy
    @lending = Lending.find(params[:id])
    @lending.destroy
    
    respond_to do |format|
      format.html { redirect_to lendings_path }
    end
  end
  
  private
  
  def require_login
    unless appHelper_ifUserLogged()
      respond_to do |format|
       format.html { redirect_to new_session_path} #, notice: 'Musisz byc zalogowany, aby dodać przedmiot' }
      end
    end
  end
  
end