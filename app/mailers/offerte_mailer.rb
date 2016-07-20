class OfferteMailer < ActionMailer::Base
  default to: 'nl.renovatie@gmail.com'
  def offerte_email(gender, initials, lastname, adres, zipcode, city, telnum, email, subject, message)
    @gender = gender
    @initials = initials
    @lastname = lastname
    @adres = adres
    @zipcode = zipcode
    @city = city
    @telnum = telnum
    @email = email
    @subject = subject
    @message = message
    mail(from: email, subject: 'Offerte Aanvrag')
  end
end