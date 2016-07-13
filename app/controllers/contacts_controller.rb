class ContactsController < ApplicationController
  
    def new
        @contact = Contact.new
    end
  
    def create
        @contact = Contact.new(contact_params)
        if @contact.save
            flash[:success] = "Bericht verstuurd, u krijgt zo spoedig mogelijk reactie!"
            redirect_to new_contact_path
        else
            flash[:danger] = "Er heeft zich een fout voorgedaan, heeft u alle velden correct ingevuld?"
            redirect_to new_contact_path
        end
    end
  
    private
    def contact_params
        params.require(:contact).permit(:name, :email, :comments)
    end
end