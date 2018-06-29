class Attraction < ApplicationRecord
	has_one_attached :image
  	belongs_to :company

  	validates_presence_of  :name, :address, :duration_time, :max_people, :price, :company_id
end
