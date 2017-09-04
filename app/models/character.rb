class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

  def say_that_thing_you_say
    return "#{self.name} always says: #{self.catchphrase}"
  end

  def build_show(info)
    new_show = Show.new(info)
    self.show = new_show
  end

end