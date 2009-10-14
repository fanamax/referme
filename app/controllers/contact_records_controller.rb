class ContactRecordsController < ApplicationController
  
  # invoked after user fills out contact form and clicks on Refer Me button
  def record_contact
    contactrecord = ContactRecord.new(params[:contactrecord])
    # perform validation
    error_id = "error" + contactrecord.business.id.to_s()
    if contactrecord.name.length == 0
      render :update do |page|
        page.replace_html error_id,"tell us your name"
      end
    elsif contactrecord.email.length == 0 && contactrecord.phone.length == 0
      render :update do |page|
        page.replace_html error_id,"leave phone or email"
      end
    elsif (contactrecord.phone.length > 0 && contactrecord.phone.length != 10)
      render :update do |page|
        page.replace_html error_id,"invalid phone number"
      end      
    elsif !(contactrecord.email =~ /(.+)@(.+)\.(.{3})/ )
      render :update do |page|
        page.replace_html error_id,"invalid email"
      end
    else
      contactrecord.save
      Mailer.deliver_mail!(contactrecord)
      render :update do |page|
        div_id = "contactform" + contactrecord.business.id.to_s()
        page.replace_html div_id,:partial => 'shared/after_contact'
      end
    end
  end
end
