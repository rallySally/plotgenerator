class Person < ActiveRecord::Base
  has_many :story
  has_one :name, :class_name => "Name"
  has_one :surname, :class_name => "Name"
  has_one :job, :class_name => "Job"
  has_one :charOne, :class_name => "Characteristic"
  has_one :charOne, :class_name => "Characteristic"
  has_one :charOne, :class_name => "Characteristic"
end
