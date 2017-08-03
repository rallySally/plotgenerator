require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  setup do
    @post = posts(:dog)
    @post2 = posts(:dishes)
  end

end
