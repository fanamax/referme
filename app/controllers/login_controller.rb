class LoginController < ApplicationController

  def logout
    reset_session
    redirect_to :controller => 'login', :action => 'login'
  end
  
  def process_login
    if (userid = User.authenticate(params[:username], params[:password])) != -1
      user = User.find(userid)
      if user.role == "admin"
        session[:id] = userid
        user = User.find(userid)
        redirect_to :action => "admin"
      else
        flash[:error] = 'Invalid login.'
        redirect_to :controller => "login", :action => "login"
      end
    else
      flash[:error] = 'Invalid login.'
      redirect_to :action => "login"      
    end
  end
    
  def login
    render :layout => false
  end
  
  def admin
    render :layout => false
  end
  
end
