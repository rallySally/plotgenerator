class Story < ActiveRecord::Base
  belongs_to :characterOne
  belongs_to :characterTwo
end
