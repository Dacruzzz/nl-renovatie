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
            file = params[:offerte][:file]
            OfferteMailer.offerte_email(gender, initials, lastname, adres, zipcode, city, telnum, email, subject, message, file).deliver
            flash[:success] = "Bedankt voor uw aanvraag, u krijgt zo spoedig mogelijk reactie!"
            redirect_to new_offerte_path
        else
            render new_offerte_path
        end
    end
  
    private
    def offerte_params
        params.require(:offerte).permit(:gender, :initials, :lastname, :adres, :zipcode, :city, :telnum, :email, :subject, :message)
    end
end