class ReferalsController < ApplicationController
  def create
    @referal = Referal.new(params[:referal])
    @referal.save!
    redirect_to :controller => "users", :action => "profile", :id => @referal.user_id
  end
  
  def remove
    referal = Referal.find(params[:id])
    userid = referal.user.id
    referal.destroy
    redirect_to :controller => 'users', :action => 'profile', :id => userid
  end
end
