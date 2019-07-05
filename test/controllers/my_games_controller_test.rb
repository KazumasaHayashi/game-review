require 'test_helper'

class MyGamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @my_game = my_games(:one)
  end

  test "should get index" do
    get my_games_url
    assert_response :success
  end

  test "should get new" do
    get new_my_game_url
    assert_response :success
  end

  test "should create my_game" do
    assert_difference('MyGame.count') do
      post my_games_url, params: { my_game: { already: @my_game.already, comment: @my_game.comment, company: @my_game.company, evaluation: @my_game.evaluation, name: @my_game.name, price: @my_game.price, year: @my_game.year } }
    end

    assert_redirected_to my_game_url(MyGame.last)
  end

  test "should show my_game" do
    get my_game_url(@my_game)
    assert_response :success
  end

  test "should get edit" do
    get edit_my_game_url(@my_game)
    assert_response :success
  end

  test "should update my_game" do
    patch my_game_url(@my_game), params: { my_game: { already: @my_game.already, comment: @my_game.comment, company: @my_game.company, evaluation: @my_game.evaluation, name: @my_game.name, price: @my_game.price, year: @my_game.year } }
    assert_redirected_to my_game_url(@my_game)
  end

  test "should destroy my_game" do
    assert_difference('MyGame.count', -1) do
      delete my_game_url(@my_game)
    end

    assert_redirected_to my_games_url
  end
end
