# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Job.create(:name => "Student")
Job.create(:name => "Batman")
Job.create(:name => "Fachinformatiker")
Job.create(:name => "Arbeitslos")
Job.create(:name => "Doktor")
Job.create(:name => "Spion")
Job.create(:name => "Schäfer")

#Gendindex [0 = for surnames, 1= male,2=female]
#If more genders needed make a
Name.create(:name => "Jürgen" ,:isSurname => false, :gender => 1)
Name.create(:name => "Steffen" ,:isSurname => false, :gender => 1)
Name.create(:name => "Hans" ,:isSurname => false, :gender => 1)
Name.create(:name => "Fritz" ,:isSurname => false, :gender => 1)
Name.create(:name => "Lars" ,:isSurname => false, :gender => 1)
Name.create(:name => "Klaus" ,:isSurname => false, :gender => 1)
Name.create(:name => "Günther" ,:isSurname => false, :gender => 1)
Name.create(:name => "Marcus" ,:isSurname => false, :gender => 1)
Name.create(:name => "Daniel" ,:isSurname => false, :gender => 1)
Name.create(:name => "David" ,:isSurname => false, :gender => 1)
Name.create(:name => "Chris" ,:isSurname => false, :gender => 1)
Name.create(:name => "Schmidt" ,:isSurname => true, :gender => 0)

Name.create(:name => "Kevin" ,:isSurname => false, :gender => 1)
Name.create(:name => "Calvin" ,:isSurname => true, :gender => 0)

Name.create(:name => "Julia" ,:isSurname => false, :gender => 2)
Name.create(:name => "Müller" ,:isSurname => true, :gender => 0)

Name.create(:name => "Laura" ,:isSurname => false, :gender => 2)
Name.create(:name => "Lisa" ,:isSurname => false, :gender => 2)
Name.create(:name => "Lara" ,:isSurname => false, :gender => 2)
Name.create(:name => "Iulia" ,:isSurname => false, :gender => 2)
Name.create(:name => "Marie" ,:isSurname => false, :gender => 2)
Name.create(:name => "Daniela" ,:isSurname => false, :gender => 2)
Name.create(:name => "Katrin" ,:isSurname => false, :gender => 2)
Name.create(:name => "Carolin" ,:isSurname => false, :gender => 2)
Name.create(:name => "Franzi" ,:isSurname => false, :gender => 2)
Name.create(:name => "Bommer" ,:isSurname => true, :gender => 0)


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

Person.create(:age => 10,
              :color => "Schwarz",
              :hair => "Glatze",
              :name_id => Name.where("isSurname = 0").first,
              :surname_id => Name.where("isSurname = 1").first,
              :job_id => Job.find(1),
              :charOne_id => Characteristic.find(1),
              :charTwo_id => Characteristic.find(2),
              :charThree_id => Characteristic.find(3))

Story.create(:title => "Der rote Mond", :characterOne_id => Person.find(1))

User.delete_all
User.create(name: "admin", password: "admin", password_confirmation: "admin")