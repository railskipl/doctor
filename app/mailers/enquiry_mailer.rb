class EnquiryMailer < ActionMailer::Base
  default from: "swap.kunal@gmail.com"
  def enquiry_confirmation(enquiry)
    @enquiry = enquiry
    mail(:to => [enquiry.user_email, "adityanarsapurkar@yahoo.com"], :subject => "Registered")
  end
end
