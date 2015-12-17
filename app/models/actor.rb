class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name.capitalize} #{self.last_name.capitalize}"
  end 

  def list_roles
    self.characters.map {|ch| "#{ch.name} - #{ch.show.name}"}.join(", ")
  end
end