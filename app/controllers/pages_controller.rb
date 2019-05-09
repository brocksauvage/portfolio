class PagesController < ApplicationController

  def index
  end

  def show
    render template: params[:id]
  end

end
