require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get bag" do
    get :bag
    assert_response :success
  end

  test "should get profile" do
    get :profile
    assert_response :success
  end

  test "should get pokedex" do
    get :pokedex
    assert_response :success
  end

  test "should get pokemart" do
    get :pokemart
    assert_response :success
  end

  test "should get pokemon_team" do
    get :pokemon_team
    assert_response :success
  end

end
