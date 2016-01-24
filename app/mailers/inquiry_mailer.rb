class InquiryMailer < ActionMailer::Base
  default from: "ads21.hideya@gmail.com"


  def received_email(inquiry)
    @inquiry = inquiry
    binding.pry
    mail( to: "ads21.hideya@gmail.com", subject: "webサイトからお問い合わせがありました。")
  end


  def thanks_email(inquiry)
    @inquiry = inquiry
    mail( to: inquiry.email, subject: "【英弥】お問い合わせを受け付けました")
  end
end
