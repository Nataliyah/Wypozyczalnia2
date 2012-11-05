class ThingsController < ApplicationController
  
  def index
    @things = Thing.all
  end
  
  def show
    @thing = Thing.find(params[:id])
    @lending = nil
    if params[:wypozycz] 
      @lending = Lending.new
    end
  end
  
  def new
    #trzeba wyznaczyc jakos uzytkownika, dla ktorego tworzona jest rzecz
    #@user = User.find() #w tym przpadyku jest to aktualnie zalogowany uzytkownik
    @thing = Thing.new
  end
  
  def create
    @thing = Thing.new(params[:thing])
    @thing.user_id = session[:user_id]
    
    respond_to do |format|
      if @thing.save
        format.html { redirect_to things_url, notice: "Przedmiot pomsylnie dodany" }
      else
        format.html { render action: "new" }
      end
    end
  end
  
  def edit
  end
  
  def update
  end
  
  def destroy
    @thing = Thing.find(params[:id])
    @thing.destroy
    
    respond_to do |format|
      format.html { redirect_to things_url }
    end
  end
  
  #PHOTO
  
  def new_photo
  end
  
  def create_photo
  end
  
  def destroy_photo
  end
  
end
