class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :network

  def build_network(info)
    new_network = Network.new(info)
    self.network = new_network
  end
end