class CreatePeople < ActiveRecord::Migration
  def change
    drop_table :people
    create_table :people do |t|
      t.references :name, index: true
      t.references :surname, index: true
      t.references :job, index: true
      t.integer :age
      t.integer :gender
      t.string :color
      t.string :hair
      t.references :charOne, index: true
      t.references :charTwo, index: true
      t.references :charThree, index: true

      t.timestamps null: false
    end
    add_foreign_key :people, :names
    add_foreign_key :people, :surnames
    add_foreign_key :people, :jobs
    add_foreign_key :people, :charOnes
    add_foreign_key :people, :charTwos
    add_foreign_key :people, :charThrees
  end
end
