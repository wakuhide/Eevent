class SendMailToUsers < ActionMailer::Base
  default from: "ads21.hideya@gmail.com"

  def thanks_email(email)
    @email = email
    mail( to: email,
          subject: '【英弥】お問い合わせを受け付けました'
        ) do |format|
    end
  end
end
