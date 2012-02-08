class ContactsController < ApplicationController
  respond_to :html
  
  def new
    respond_with @contact = Contact.new
  end
  
  def create
    @contact = Contact.new
    if @contact.update_attributes(params[:contact])
      redirect_to pages_thanks_url
    else
      
      respond_with @contact
    end
  end
end
