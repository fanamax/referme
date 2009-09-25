# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def loginlabel
    if session[:id]
      "#{User.find(session[:id]).displayname}" + " " + "#{link_to "logout", :controller => 'login', :action => 'logout'}"
    else
      "#{link_to 'login', {:controller => :login, :action => :login}, :rel => 'gb_page_center[320,240]'}"
    end
  end
end