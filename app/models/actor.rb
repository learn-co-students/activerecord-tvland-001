class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, :through => :characters

  def full_name
    "#{first_name} #{last_name}"
  end

  def list_roles
    Character.where(:actor_id => id).each do |character|
      role = character.name
      show = Show.find_by(:id => character.show_id).name
      return "#{role} - #{show}"
    end
  end
end