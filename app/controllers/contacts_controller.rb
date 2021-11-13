class ContactsController < ApplicationController
  def index
    @contacts = Contact.All
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact_params])
    if @contact.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:Guest_One_Surname, :Guest_Two_Surname, :Guest_One_First_Name, :Guest_Two_First_Name, :Children, :Attending, :Restrictions)
  end
end
