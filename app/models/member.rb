class Member < ApplicationRecord

	validates :first_name, :last_name, :email_address, :phone_number, :address, :city, :state, :zip, presence: true

	belongs_to :user
end
