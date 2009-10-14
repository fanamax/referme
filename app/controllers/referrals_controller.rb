class ReferralsController < ApplicationController
  before_filter :require_user, :only => :new
  # GET /referrals
  # GET /referrals.xml
  def index
    @referrals = Referral.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @referrals }
    end
  end

  # GET /referrals/1
  # GET /referrals/1.xml
  def show
    @referral = Referral.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @referral }
    end
  end

  # GET /referrals/new
  # GET /referrals/new.xml
  def new
    @referral = Referral.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @referral }
    end
  end

  # GET /referrals/1/edit
  def edit
    @referral = Referral.find(params[:id])
  end

  # POST /referrals
  # POST /referrals.xml
  def create
    @referral = Referral.new(params[:referral])
    @referral.business_id = session[:businessid]
    @referral.user_id = current_user.id
    respond_to do |format|
      if @referral.save
        flash[:notice] = 'Referral was successfully created.'
        format.html { redirect_to :controller => 'businesses', :action => 'show', :id => @referral.business_id }
        format.xml  { render :xml => @referral, :status => :created, :location => @referral }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @referral.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /referrals/1
  # PUT /referrals/1.xml
  def update
    @referral = Referral.find(params[:id])

    respond_to do |format|
      if @referral.update_attributes(params[:referral])
        flash[:notice] = 'Referral was successfully updated.'
        format.html { redirect_to(@referral) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @referral.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /referrals/1
  # DELETE /referrals/1.xml
  def destroy
    @referral = Referral.find(params[:id])
    @referral.destroy

    respond_to do |format|
      format.html { redirect_to(referrals_url) }
      format.xml  { head :ok }
    end
  end
end
