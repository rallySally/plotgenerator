class Person < ActiveRecord::Base
  belongs_to :name
  belongs_to :surname
  belongs_to :job
  belongs_to :charOne
  belongs_to :charTwo
  belongs_to :charThree
end
