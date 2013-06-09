class HomeController < ApplicationController
  layout "homepage"
	def index
	end

  def contact
    @contact = {}
    @contact[:name] = params[:name]
    @contact[:email] = params[:email]
    @contact[:message] = params[:message]
    ContactMailer.contact_message(@contact).deliver
    render :index
  end
end
