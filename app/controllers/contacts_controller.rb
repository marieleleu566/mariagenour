class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      redirect_to root_path, notice: "RSVP'd Sucessfully"
    else
      flash.now[:error] = 'RSVP not taken into account'
      render :new
    end
  end
end

