class BusinessesController < ApplicationController
  before_filter :login_required, :only => :createreferalform
  def search
	@businesses = Business.search(params[:businessname], params[:city])
  end
  
  def login_required
    if session[:id]
      return
    else
      render :text => "login required"
    end
  end
  
  def show
    @business = Business.find(params[:id])
  end
  
  def new
    render :controller => "businesses/create/", :layout => false
  end
  
  def create
    @business = Business.new(params[:business])
    if @business.save
      @message = "business added"
      render :partial => 'layouts/refreshparent'
    else
      redirect_to :controller => 'businesses', :action => 'new'
    end        
  end
    
  def sendreferalemail
    referal = Referal.find(params[:id])
    Mailer::deliver_mail(referal.user.email, params[:email], params[:comment])
    return if request.xhr?
    render :text => 'Message sent successfully'
  end
  
  def sendrequestemail
    req = Request.find(params[:id])
    Mailer::deliver_mail(req.user.email, params[:email], params[:comment])
    return if request.xhr?
    render :text => 'Message sent successfully'    
  end
end
