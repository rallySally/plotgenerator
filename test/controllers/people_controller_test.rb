require 'test_helper'

class PeopleControllerTest < ActionController::TestCase
  setup do
    @person = people(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:people)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create person" do
    assert_difference('Person.count') do
      post :create, person: { age: @person.age, charOne_id: @person.charOne_id, charThree_id: @person.charThree_id, charTwo_id: @person.charTwo_id, color: @person.color, gender: @person.gender, hair: @person.hair, job_id: @person.job_id, name_id: @person.name_id, surname_id: @person.surname_id }
    end

    assert_redirected_to person_path(assigns(:person))
  end

  test "should show person" do
    get :show, id: @person
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @person
    assert_response :success
  end

  test "should update person" do
    patch :update, id: @person, person: { age: @person.age, charOne_id: @person.charOne_id, charThree_id: @person.charThree_id, charTwo_id: @person.charTwo_id, color: @person.color, gender: @person.gender, hair: @person.hair, job_id: @person.job_id, name_id: @person.name_id, surname_id: @person.surname_id }
    assert_redirected_to person_path(assigns(:person))
  end

  test "should destroy person" do
    assert_difference('Person.count', -1) do
      delete :destroy, id: @person
    end

    assert_redirected_to people_path
  end
end
