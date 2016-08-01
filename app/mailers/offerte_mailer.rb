class OfferteMailer < ActionMailer::Base
  default to: 'jelte.cruz@gmail.com'
  def offerte_email(gender, initials, lastname, adres, zipcode, city, telnum, email, subject, message, file)
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
    attachments["#{file.original_filename}"] = File.read(file.path)
    mail(from: email, subject: 'Offerte Aanvrag')
  end
end