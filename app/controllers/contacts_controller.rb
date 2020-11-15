class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if ContactMailer.with(contact: @contact.to_json).hello_email.deliver_later
      flash.now[:notice] = "Thank you for your message. I'll be getting in touch with you soon!"
    else
      flash.now[:alert] = "Your message didn't send! Get in touch with me at brocksauvage@gmail.com."
    end
  end
end
