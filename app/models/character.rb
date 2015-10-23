class Character < ActiveRecord::Base
  belongs_to :show
  belongs_to :actor
  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end

  def build_show(hash)
    show = Show.create(name: hash.values[0])
    self.show_id = show.id
    self
  end

  def build_network(hash)
    network = Network.create(call_letters: hash.values[0])
    self.show.network_id = network.id
  end
end
