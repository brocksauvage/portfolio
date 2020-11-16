class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact
      ContactMailer.with(contact: @contact).hello_email.deliver_now
    else
      flash.now[:alert] = "Your message didn't send! Get in touch with me at brocksauvage@gmail.com."
    end
  end
end
