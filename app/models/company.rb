class Company < ApplicationRecord
	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

    has_many :attractives
    validates :cnpj, uniqueness: true
    validates_presence_of :cnpj,:social_name, :fantasy_name, :password_confirmation
	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
	validates_format_of :cnpj, :with => (/^\d{2}\.\d{3}\.\d{3}\/\d{4}\-\d{2}$/),  :multiline => true, :on => :create

	def to_s
		self.fantasy_name
	end

end
