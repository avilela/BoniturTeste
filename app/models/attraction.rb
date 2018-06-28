class Attraction < ApplicationRecord
	has_one_attached :image
  	belongs_to :company

  	validates_presence_of  :
end
