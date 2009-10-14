class Mailer < ActionMailer::Base
  def mail(contactrecord)
    subject	'Someone needs your referal'
    if contactrecord.user
      recipients contactrecord.user.email
    else
      recipients 'refermewebmaster@gmail.com'
    end
    from	contactrecord.email
    sent_on	Time.now
    body	:contactrecord => contactrecord
  end
end
