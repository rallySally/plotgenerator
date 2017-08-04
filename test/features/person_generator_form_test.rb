require './test/test_helper'

class PersonGeneratorFormTest < ActionDispatch::IntegrationTest
  include ActiveJob::TestHelper

  test "request_person_with_random_name_and_age" do
    person = people(:one)

    visit persongenerator_index_path
    expect(page).to have_current_path(persongenerator_index_path)


    # name and age are left empty
    assert expect(page).to have_field("name", with: "")
    assert expect(page).to have_field("age", with: "")

    # click_button('Create New')
    find_button(id: "button-#{person.id}").click

    #  check the name and age

    assert expect(page).to have_field("name", with: person.name_id)
    assert expect(page).to have_field("age", with: person.age)
    assert page.has_content? person.color
    assert page.has_content? person.hair

  end
end