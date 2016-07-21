class OffertesController < ApplicationController
  
  def new
      @offerte = Offerte.new
  end
  
    def create
        @offerte = Offerte.new(offerte_params)
        if @offerte.save
            gender = params[:offerte][:gender]
            initials = params[:offerte][:initials]
            lastname = params[:offerte][:lastname]
            adres = params[:offerte][:adres]
            zipcode = params[:offerte][:zipcode]
            city = params[:offerte][:city]
            telnum = params[:offerte][:telnum]
            email = params[:offerte][:email]
            subject = params[:offerte][:subject] 
            message = params[:offerte][:message]
            OfferteMailer.offerte_email(gender, initials, lastname, adres, zipcode, city, telnum, email, subject, message).deliver
            flash[:success] = "Offerte-aanvraag verstuurd, u krijgt zo spoedig mogelijk reactie!"
            redirect_to new_offerte_path
        else
            flash[:danger] = "Er heeft zich een fout voorgedaan, heeft u alle velden correct ingevuld?"
            render new_offerte_path
        end
    end
  
    private
    def offerte_params
        params.require(:offerte).permit(:gender, :initials, :lastname, :adres, :zipcode, :city, :telnum, :email, :subject, :message)
    end
end