class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    # binding.pry
    # role = Character.find
    Character.where(actor_id: self.id).each do |x|
      role = x.name
      show = Show.find_by(id: x.show_id).name
      return "#{role} - #{show}"
    end
  end
end
