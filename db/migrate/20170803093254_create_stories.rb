class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :title
      t.references :charachterOne, index: true
      t.references :charachterTwo, index: true
      t.references :charachterThree, index: true

      t.timestamps null: false
    end
    add_foreign_key :stories, :charachterOnes
    add_foreign_key :stories, :charachterTwos
    add_foreign_key :stories, :charachterThrees
  end
  def self.up
      Story.create(:title => "Der rote Mond" ,characterOne: => Person.find(1))
  end
  def self.down
    Story.delete_all()
  end
end
