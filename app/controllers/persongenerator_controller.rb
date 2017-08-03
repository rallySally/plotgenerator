class PersongeneratorController < ApplicationController
  def generator
  end

  def index

    @person = Person.find(1);


    @name = Name.where(isSurname: false).first.name + ' ' + Name.where(isSurname: true).first.name
    @age = @person.age
    @gender = "male"
    @job = "Tenns"
    @skin = @person.color
    @hair = @person.hair
  end
end
