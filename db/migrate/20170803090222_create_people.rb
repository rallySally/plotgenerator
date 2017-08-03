class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.integer :age
      t.integer :gender
      t.string :color
      t.string :hairlength
      t.references :charOne, index: true
      t.references :charTwo, index: true
      t.references :charThree, index: true

      t.timestamps null: false
    end
    add_foreign_key :people, :charOnes
    add_foreign_key :people, :charTwos
    add_foreign_key :people, :charThrees
  end

  def self.up

      #karma gives information aboot if the characteristic is good or bad
      #Positiv characteristics
      Person.create(:age => 10,
                    :color => "Schwarz",
                    :hair => "Glatze",
                    :name => Name.find(:isSurname => false, :limit => 1),
                    :surname => Name.find(:isSurname => true, :limit => 1),
                    :job => Job.find(:limit => 1),
                    :charOne => Characteristic.find(1),
                    :charTwo => Characteristic.find(2),
                    :charThree => Characteristic.find(3))
  end
  def self.down
    Person.delete_all()
  end

end
