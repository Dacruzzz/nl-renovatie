class OfferteRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :offertes do |t|
      t.string :gender
      t.string :initials
      t.string :lastname
      t.string :adres
      t.string :zipcode
      t.string :city
      t.integer :telnum
      t.string :email
      t.string :subject
      t.text :message
      t.timestamps
    end
  end
end
