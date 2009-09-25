class UsersController < ApplicationController
  
  def index
    render :text => "a"
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      @message = "user created"
      render :partial => 'layouts/refreshparent'
    else
      redirect_to :controller => 'users', :action => 'new'
    end    
  end

  def new
    @user = User.new
    render :controller => "users/new/", :layout => false    
  end
  
  def login
    @user = User.new
    @user.displayname = params[:username]
    if flash[:error] == 'Invalid login'
      @error = "wrong username or password"
    end
    render :controller => "users/login", :layout => false
  end
  
  def logout
    reset_session
    redirect_to(:back)
  end
  
  def processlogin
    if (userid = User.authenticate(params[:username], params[:password])) != -1
      session[:id] = userid # Remember the user's id during this session
      flash[:error] = ''
      @message = "login successful"
      render :partial => 'layouts/refreshparent'
    else
      flash[:error] = 'Invalid login.'
      redirect_to :controller => "users", :action => "login"
    end
  end
end
