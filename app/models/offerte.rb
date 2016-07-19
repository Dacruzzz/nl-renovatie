class Offerte < ActiveRecord::Base
    
    validates :gender, presence: true
    validates :initials, presence: true
    validates :lastname, presence: true
    validates :adres, presence: true
    validates :zipcode, zipcode: { country_code: :nl }, presence: true
    validates :city, presence: true
    validates_numericality_of :telnum, :only_integer => true, presence: true
    validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, presence: true
    validates :subject, presence: true
    validates :message, presence: true
end