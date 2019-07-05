require "application_system_test_case"

class MyGamesTest < ApplicationSystemTestCase
  setup do
    @my_game = my_games(:one)
  end

  test "visiting the index" do
    visit my_games_url
    assert_selector "h1", text: "My Games"
  end

  test "creating a My game" do
    visit my_games_url
    click_on "New My Game"

    check "Already" if @my_game.already
    fill_in "Comment", with: @my_game.comment
    fill_in "Company", with: @my_game.company
    fill_in "Evaluation", with: @my_game.evaluation
    fill_in "Name", with: @my_game.name
    fill_in "Price", with: @my_game.price
    fill_in "Year", with: @my_game.year
    click_on "Create My game"

    assert_text "My game was successfully created"
    click_on "Back"
  end

  test "updating a My game" do
    visit my_games_url
    click_on "Edit", match: :first

    check "Already" if @my_game.already
    fill_in "Comment", with: @my_game.comment
    fill_in "Company", with: @my_game.company
    fill_in "Evaluation", with: @my_game.evaluation
    fill_in "Name", with: @my_game.name
    fill_in "Price", with: @my_game.price
    fill_in "Year", with: @my_game.year
    click_on "Update My game"

    assert_text "My game was successfully updated"
    click_on "Back"
  end

  test "destroying a My game" do
    visit my_games_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "My game was successfully destroyed"
  end
end
