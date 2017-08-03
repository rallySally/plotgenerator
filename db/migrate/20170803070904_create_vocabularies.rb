class CreateVocabularies < ActiveRecord::Migration
  def change
    create_table :vocabularies do |t|
      t.string :word
      t.string :function
      t.string :article

      t.timestamps null: false
    end
  end

  def self.up
      #Gendindex [0 = for surnames, 1= male,2=female]
      #If more genders needed make a

      Vocabulary.create(:word => "Mond" , :function => "noun", :article => "der")
      Vocabulary.create(:word => "Hund" , :function => "noun", :article => "der")
      Vocabulary.create(:word => "Katze" , :function => "noun", :article => "die")
      Vocabulary.create(:word => "Haus" , :function => "noun", :article => "das")
      Vocabulary.create(:word => "Mörder" , :function => "noun", :article => "der")
      Vocabulary.create(:word => "Mann" , :function => "noun", :article => "der")
      Vocabulary.create(:word => "Frau" , :function => "noun", :article => "die")
      Vocabulary.create(:word => "Anwalt" , :function => "noun", :article => "der")
      Vocabulary.create(:word => "Baum" , :function => "noun", :article => "der")
      Vocabulary.create(:word => "Berg" , :function => "noun", :article => "der")
      Vocabulary.create(:word => "Geist" , :function => "noun", :article => "das")
      Vocabulary.create(:word => "Zombie" , :function => "noun", :article => "der")
      Vocabulary.create(:word => "Spinne" , :function => "noun", :article => "die")
      Vocabulary.create(:word => "Dinner" , :function => "noun", :article => "das")
      Vocabulary.create(:word => "Hammer" , :function => "noun", :article => "der")
      Vocabulary.create(:word => "Locher" , :function => "noun", :article => "der")
      Vocabulary.create(:word => "Bleistift" , :function => "noun", :article => "der")
      Vocabulary.create(:word => "Crack" , :function => "noun", :article => "das")
      Vocabulary.create(:word => "Buch" , :function => "noun", :article => "das")
      Vocabulary.create(:word => "Vergessen" , :function => "noun", :article => "das")
      Vocabulary.create(:word => "Zug" , :function => "noun", :article => "der")
      Vocabulary.create(:word => "Hölle" , :function => "noun", :article => "die")
      Vocabulary.create(:word => "Vergangenheit" , :function => "noun", :article => "die")
      Vocabulary.create(:word => "Helden" , :function => "noun", :article => "die")
      Vocabulary.create(:word => "Held" , :function => "noun", :article => "der")

      Vocabulary.create(:word => "und" , :function => "konjunction")
      Vocabulary.create(:word => "oder",:function => "konjunction")

      Vocabulary.create(:word => "rote",:function => "adjectiv")
      Vocabulary.create(:word => "blaue",:function => "adjectiv")
      Vocabulary.create(:word => "grüne",:function => "adjectiv")
      Vocabulary.create(:word => "gelbe",:function => "adjectiv")
      Vocabulary.create(:word => "scharze",:function => "adjectiv")
      Vocabulary.create(:word => "helle",:function => "adjectiv")
      Vocabulary.create(:word => "lustige",:function => "adjectiv")
      Vocabulary.create(:word => "stabile",:function => "adjectiv")
      Vocabulary.create(:word => "gruselige",:function => "adjectiv")
      Vocabulary.create(:word => "schräge",:function => "adjectiv")
      Vocabulary.create(:word => "faule",:function => "adjectiv")
      Vocabulary.create(:word => "brüchige",:function => "adjectiv")
      Vocabulary.create(:word => "lüsterne",:function => "adjectiv")
      Vocabulary.create(:word => "zarte",:function => "adjectiv")
      Vocabulary.create(:word => "grobe",:function => "adjectiv")
      Vocabulary.create(:word => "behaarte",:function => "adjectiv")
      Vocabulary.create(:word => "kahle",:function => "adjectiv")
      Vocabulary.create(:word => "kleine",:function => "adjectiv")
      Vocabulary.create(:word => "große",:function => "adjectiv")
      Vocabulary.create(:word => "schrullige",:function => "adjectiv")
      Vocabulary.create(:word => "alte",:function => "adjectiv")
      Vocabulary.create(:word => "junge",:function => "adjectiv")
      Vocabulary.create(:word => "dumme",:function => "adjectiv")
      Vocabulary.create(:word => "verrückte",:function => "adjectiv")

    end
    def self.down
      Vocabulary.delete_all()
    end
end
