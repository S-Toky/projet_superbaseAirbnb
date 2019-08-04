class Listing < ApplicationRecord
	validates :available_beds,
	presence: true,
	numericality: true

	validates :price,
	presence: true,
	numericality: true

	validates :description,
	presence: true,
	length: {minimum: 140}

	validates :welcome_message,
	presence: true

	belongs_to :user
	has_many :reservations
	belongs_to :city


end
