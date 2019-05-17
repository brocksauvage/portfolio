class PagesController < ApplicationController

  def index
    @contact = Contact.new
  end

  def download_resume
    send_file "#{Rails.root}/public/files/resume.pdf", type: "application/pdf", x_sendfile: true
  end
end
