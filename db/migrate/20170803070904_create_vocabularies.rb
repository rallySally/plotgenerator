class CreateVocabularies < ActiveRecord::Migration
  def change
    create_table :vocabularies do |t|
      t.string :word
      t.string :function
      t.string :article

      t.timestamps null: false
    end
  end  
end
