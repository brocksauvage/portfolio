class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:notice] = "Thank you for your message. I'll be getting in touch with you soon!"
      redirect_to root_path
    else
      flash.now[:alert] = "Your message didn't send! Get in touch with me at bsauvage14@gmail.com."
    end
  end
end
