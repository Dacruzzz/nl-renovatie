class Offerte < ActiveRecord::Base
    
    validates :gender, presence: true
    validates :intials, presence: true
    validates :lastname, presence: true
    validates :address, presence: true
    validates :zipcode, presence: true
    validates :city, presence: true
    validates :telnum, presence: true
    validates :email, presence: true
    validates :subject, presence: true
    validates :message, presence: true
end