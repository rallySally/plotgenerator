require 'test_helper'

class ShowStoryTest < ActionDispatch::IntegrationTest
  include ActiveJob::TestHelper
  test "get story" do
     #perform test
     story = stories(:one)

    visit story_path

     find_button(id: "button-#{saveStory.id}").click

     # test association in database
     characteristic = characteristic(:one)
     assert_equal story.characterOne_id, 'Smiley'

     # is it the correct title?
     assert page.has_content? story.title
     assert expect(page).to have_field("Title", with: "Make writing novels great again")


  end

end