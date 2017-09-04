class CreateCharacters< ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.belongs_to :actor
      t.belongs_to :show
      t.string :catchphrase
    end
  end
end
