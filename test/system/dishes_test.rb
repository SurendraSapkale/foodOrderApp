require "application_system_test_case"

class DishesTest < ApplicationSystemTestCase
  setup do
    @dish = dishes(:one)
  end

  test "visiting the index" do
    visit dishes_url
    assert_selector "h1", text: "Dishes"
  end

  test "creating a Dish" do
    visit dishes_url
    click_on "New Dish"

    fill_in "Buyer", with: @dish.buyer_id
    fill_in "Chef", with: @dish.chef_id
    fill_in "Country", with: @dish.country
    fill_in "Cuisine", with: @dish.cuisine
    fill_in "Description", with: @dish.description
    fill_in "Dish name", with: @dish.dish_name
    fill_in "Picture", with: @dish.picture
    fill_in "Postcode", with: @dish.postcode
    fill_in "Price", with: @dish.price
    fill_in "Special dietery details", with: @dish.special_dietery_details
    fill_in "State", with: @dish.state
    fill_in "Street details", with: @dish.street_details
    fill_in "Suburb", with: @dish.suburb
    click_on "Create Dish"

    assert_text "Dish was successfully created"
    click_on "Back"
  end

  test "updating a Dish" do
    visit dishes_url
    click_on "Edit", match: :first

    fill_in "Buyer", with: @dish.buyer_id
    fill_in "Chef", with: @dish.chef_id
    fill_in "Country", with: @dish.country
    fill_in "Cuisine", with: @dish.cuisine
    fill_in "Description", with: @dish.description
    fill_in "Dish name", with: @dish.dish_name
    fill_in "Picture", with: @dish.picture
    fill_in "Postcode", with: @dish.postcode
    fill_in "Price", with: @dish.price
    fill_in "Special dietery details", with: @dish.special_dietery_details
    fill_in "State", with: @dish.state
    fill_in "Street details", with: @dish.street_details
    fill_in "Suburb", with: @dish.suburb
    click_on "Update Dish"

    assert_text "Dish was successfully updated"
    click_on "Back"
  end

  test "destroying a Dish" do
    visit dishes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dish was successfully destroyed"
  end
end
