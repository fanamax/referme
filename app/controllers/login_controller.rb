class LoginController < ApplicationController

  def require_login
    unless session[:id]
      flash[:notice] = "please log in"
      redirect_to :controller => "login", :action => "login"
    end
  end

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
  
  def admin
  end
  
  def login
  end
end
