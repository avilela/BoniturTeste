class Attraction < ApplicationRecord
	has_one_attached :image
  	belongs_to :company

  	validates_presence_of  :name, :address, :duration_time, :max_people, :price, :company_id
  	validate :image?, :is_image?

  	private 
  		def image?
      		errors.add(:base, 'Por favor insira uma imagem para atração.') unless image.attached?
	    end

	    def is_image?
	    	errors.add(:base, 'Por favor insira um arquivo que seja uma imagem') unless image.blob.content_type.starts_with?('image/')
	    end
end
