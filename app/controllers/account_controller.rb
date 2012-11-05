class AccountController < ApplicationController
  
  def signup
    @user = User.new(params[:user])
    return unless request.post?
    #render :text => 'aaa'
    
   # respond_to do |format|
  if @user.save
        render :text => "udalo sie zasavowac"
#        #format.html { redirect_to 'home', notice: 'Uzytkownik dodany.'}
      else
         render :text => "nie udalo sie zasavowac"
#        #format.html { render action: "signup" }
      end 
# end
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
  end
  
  def login
  end
  
  def logout
    redirect_back_or(:controller => 'home', :action => 'index')
  end
  
end
