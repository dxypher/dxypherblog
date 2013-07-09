module ContactHelper
  def contact
    if params[:email] != '' # only spam bots will enter email in here.
      redirect_to root_path
    else
      @contact = {}
      @contact[:name] = params[:name]
      @contact[:email] = params[:email_2]
      @contact[:message] = params[:message]
      ContactMailer.contact_message(@contact).deliver
      flash[:notice] = "Thanks for contacting me."
      redirect_to root_path
    end
  end
end