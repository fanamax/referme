class LoginController < ApplicationController
  def login
    @user = User.new
    render :controller => "login/login", :layout => false
  end
  
  def logout
    reset_session
    redirect_to(:back)
  end
  
  def processlogin
    if (userid = User.authenticate(params[:username], params[:password])) != -1
      session[:userid] = userid # Remember the user's id during this session
      @message = "login successful"
      render :partial => 'layouts/refreshparent'
    else
      flash[:error] = 'Invalid login.'
      redirect_to :controller => "login", :action => "login"
    end
  end
end
