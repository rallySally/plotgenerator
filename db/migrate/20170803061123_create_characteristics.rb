class CreateCharacteristics < ActiveRecord::Migration
  def change
    create_table :characteristics do |t|
      t.string :name
      t.integer :karma

      t.timestamps null: false
    end
  end
end
