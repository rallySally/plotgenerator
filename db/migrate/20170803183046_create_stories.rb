class CreateStories < ActiveRecord::Migration
  def change
    drop_table :stories
    create_table :stories do |t|
      t.string :title
      t.references :characterOne, index: true
      t.references :characterTwo, index: true
      t.references :characterThree

      t.timestamps null: false
    end
    add_foreign_key :stories, :characterOnes
    add_foreign_key :stories, :characterTwos
  end
end
