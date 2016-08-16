class Offerte < ActiveRecord::Base
    
    validates :gender,
        presence: true
    validates :initials,
        presence: {:message => "Vul uw initialen in"}
    validates :lastname,
        presence: {:message => "Vul uw achternaam in"}
    validates :adres,
        presence: {:message => "Vul uw adres in"}
    validates_format_of :zipcode,
        :with => /(NL-)?(\d{4})\s*([A-Z]{2})/, :message => "De ingevoerde postcode is onjuist", presence: {:message => "Vul uw adres in"}
    validates :city,
        presence: {:message => "Vul uw woonplaats in"}
    validates_numericality_of :telnum,
        :only_integer => true, :message => "Het ingevoerde telefoonnummer is onjuist", presence: {:message => "Vul uw telefoonnummer in"}
    validates_format_of :email,
        :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, :message => "Het ingevoerde emailadres is onjuist", presence: {:message => "Vul uw emailadres in"}
    validates_length_of :subject,
        :minimum => 1, :message => "Het onderwerp moet minimaal 1 en mag maximaal 30 tekens bevatten", :maximum => 30, presence: {:message => "Vul een onderwerp in"}
    validates_length_of :message,
        :minimum => 5, :message => "Het bericht moet minimaal 5 en mag maximaal 1000 tekens bevatten", :maximum => 1000, presence: {:message => "Vul een bericht in"}
end