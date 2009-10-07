# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.


class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # filter_parameter_logging :password
  def require_login
    unless session[:id]
      flash[:notice] = "please log in"
      redirect_to :controller => "login", :action => "login"
    end
  end

end
