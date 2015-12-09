class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.text     :name
      t.integer  :actor_id
      t.integer  :show_id
    end
  end
end