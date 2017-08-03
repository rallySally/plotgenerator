class Story < ActiveRecord::Base
  belongs_to :charachterOne, :class_name => "Person"
  belongs_to :charachterTwo, :class_name => "Person"
  belongs_to :charachterThree, :class_name => "Person"
end
