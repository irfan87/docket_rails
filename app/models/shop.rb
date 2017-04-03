class Shop < ApplicationRecord
	validates :shop_name, presence: true
	validates :shop_address, presence: true
	validates :shop_postcode, presence: true
	validates :shop_phone, presence: true
	validates :shop_other_phone, presence: true

	belongs_to :owner
	has_many :customers, dependent: :destroy, inverse_of: :shop

	accepts_nested_attributes_for :customers, reject_if: :all_blank, allow_destroy: true
end
