class UsersController < ApplicationController
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    @user.admin = false
    
    respond_to do |format|
      if @user.save
         format.html { redirect_to root_url, :notice => "Uzytkownik pomyslnie dodany" }
      else
         format.html { render action: "new" }
      end 
    end
  end
  
  def index
    @users = User.all
  end
  
  def show
  end
  
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    
    respond_to do |format|
      format.html { redirect_to users_url }
    end
  end
  
  ##########
  
  def sort_by
  end
  
  def view_details
    render :action => 'show'
  end
  
  def your_profile
    render :action => 'show'
  end
  
end
