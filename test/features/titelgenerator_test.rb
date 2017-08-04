require 'test_helper'

class TitlegeneratorTest < ActionDispatch::IntegrationTest
  include ActiveJob::TestHelper

  test "title_test" do

    visit title_index_path
    expect(page).to have_current_path(title_index_path)

    assert expect(page).to have_field("Old Title 1", with: "")
    assert expect(page).to have_field("Old Title 2", with: "")
    assert expect(page).to have_field("Old Title 3", with: "")

    # click_button('Create New')
    find_button(id: "button-#{titleGen.id}").click
    # fileds not empty?
    # assert expect(page).to have_field("Old Title 1", with: "")
    # assert expect(page).to have_field("Old Title 2", with: "")
    # assert expect(page).to have_field("Old Title 3", with: "")



  end
end