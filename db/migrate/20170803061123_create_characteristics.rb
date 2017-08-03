class CreateCharacteristics < ActiveRecord::Migration
  def change
    create_table :characteristics do |t|
      t.string :name
      t.integer :karma

      t.timestamps null: false
    end
  end

  def self.up

      #karma gives information aboot if the characteristic is good or bad
      #Positiv characteristics
      Characteristic.create(:name => "fair", :karma => 100);
      Characteristic.create(:name => "kreativ", :karma => 100);
      Characteristic.create(:name => "intelligent", :karma => 100);
      Characteristic.create(:name => "sportlich", :karma => 100);

      #ambivalent characteristics
      Characteristic.create(:name => "eitel", :karma => 50);
      Characteristic.create(:name => "intellektuell", :karma => 50);
      Characteristic.create(:name => "rationell", :karma => 50);
      Characteristic.create(:name => "stolz", :karma => 50);
      
      #Negativ characteristics
      Characteristic.create(:name => "aggressiv", :karma => 0);
      Characteristic.create(:name => "cholerisch", :karma => 0);
      Characteristic.create(:name => "dekadent", :karma => 0);
      Characteristic.create(:name => "drogenabhängig", :karma => 0);

    end
    def self.down
      Characteristic.delete_all()
    end
end
