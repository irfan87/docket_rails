class Customer < ApplicationRecord
	belongs_to :shop

	validates :cust_name, presence: true
	validates :cust_address, presence: true
	validates :cust_postcode, presence: true
end
