class AddActorToCharacters < ActiveRecord::Migration
  def change
    add_reference :characters, :actor, index: true
  end
end