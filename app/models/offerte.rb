class Offerte < ActiveRecord::Base
    
    validates :gender, presence: true
    validates :initials, presence: true
    validates :lastname, presence: true
    validates :adres, presence: true
    validates :zipcode, zipcode: { country_code: :nl }, presence: true
    validates :city, presence: true
    validates_numericality_of :telnum, :only_integer => true, presence: true
    validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, presence: true
    validates_length_of :subject, :minimum => 1, :maximum => 30, presence: true
    validates_length_of :message, :minimum => 5, :maximum => 1000, presence: true
end