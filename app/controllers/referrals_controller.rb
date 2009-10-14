class ReferralsController < ApplicationController
  def create
    @referral = Referral.new(params[:referral])
    @referral.save!
    redirect_to :controller => "users", :action => "profile", :id => @referral.user_id
  end
  
  def remove
    referral = Referral.find(params[:id])
    userid = referral.user.id
    referral.destroy
    redirect_to :controller => 'users', :action => 'profile', :id => userid
  end
end
