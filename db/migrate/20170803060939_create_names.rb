class CreateNames < ActiveRecord::Migration
  def change
    create_table :names do |t|
      t.string :name
      t.boolean :isSurname
      t.integer :gender

      t.timestamps null: false
    end
  end

  def self.up
      #Gendindex [0 = for surnames, 1= male,2=female]
      #If more genders needed make a
      Name.create(:name => "Jürgen" ,:isSurname => false, :gender => 1)
      Name.create(:name => "Schmidt" ,:isSurname => true, :gender => 0)

      Name.create(:name => "Kevin" ,:isSurname => false, :gender => 1)
      Name.create(:name => "Calvin" ,:isSurname => true, :gender => 0)

      Name.create(:name => "Julia" ,:isSurname => false, :gender => 2)
      Name.create(:name => "Müller" ,:isSurname => true, :gender => 0)

      Name.create(:name => "Laura" ,:isSurname => false, :gender => 2)
      Name.create(:name => "Bommer" ,:isSurname => true, :gender => 0)
    end
    def self.down
      Name.delete_all()
    end
end
