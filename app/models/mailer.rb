class Mailer < ActionMailer::Base
  def mail(recipient, senderemail, content)
	@from = "no-reply@referme.com"
	@recipients = recipient
	@subject = "Hi, how are you"
  end
end
