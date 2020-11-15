class ContactMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def hello_email
    @contact = params[:contact]
    mail(to: "brocksauvage@gmail.com", subject: "[Web Portfolio] Message from #{@contact.name}")
  end
end
