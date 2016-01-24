class SendMailToAdmin < ActionMailer::Base
  default from: "ads21.hideya@gmail.com"


  def hello(name)
    @name = name
    mail(
      to:      'ads21.hideya@gmail.com',
      subject: "Mail from Message #{name}",
    ) do |format|
      #format.html
    end
  end
end
