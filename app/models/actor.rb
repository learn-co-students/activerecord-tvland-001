require 'pry'

class Actor < ActiveRecord::Base 

	has_many :characters
	has_many :shows, through: :characters
	has_many :networks, through: :shows

	def full_name
		first = self.first_name
		last = self.last_name
		"#{first} #{last}"
	end

	def list_roles
		roles = self.characters.collect do |character|
			"#{character.name} - #{character.show.name}"
		end
	end
  
end