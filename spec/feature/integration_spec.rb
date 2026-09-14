# location: spec/feature/integration_spec.rb
require "rails_helper"

RSpec.describe "Creating a book", type: :feature do
  scenario "valid inputs" do
    visit new_add_book_path
    fill_in "book[title]", with: "hyrule historia"
    fill_in "book[author]", with: "nintendo"
    fill_in "book[price]", with: 20.00
    fill_in "book[published_date]", with: Date.new(2019, 2, 16)
    click_on "Create Book"
    expect(page).to have_content("hyrule historia")
    expect(page).to have_content("nintendo")
    expect(page).to have_content(20.00)
    expect(page).to have_content(Date.new(2019, 2, 16))
    expect(page).to have_content("Book added successfully")
  end

  scenario "negative price" do
    visit new_add_book_path
    fill_in "book[title]", with: "hyrule historia"
    fill_in "book[author]", with: "nintendo"
    fill_in "book[price]", with: -20.00
    fill_in "book[published_date]", with: Date.new(2019, 2, 16)
    click_on "Create Book"
    expect(page).to have_content("Book price must not be negative")
  end

  scenario "empty title" do
    visit new_add_book_path
    fill_in "book[author]", with: "nintendo"
    fill_in "book[price]", with: 20.00
    fill_in "book[published_date]", with: Date.new(2019, 2, 16)
    click_on "Create Book"
    expect(page).to have_content("All Book attributes must be filled in")
  end

  scenario "empty author" do
    visit new_add_book_path
    fill_in "book[title]", with: "hyrule historia"
    fill_in "book[price]", with: 20.00
    fill_in "book[published_date]", with: Date.new(2019, 2, 16)
    click_on "Create Book"
    expect(page).to have_content("All Book attributes must be filled in")
  end

  scenario "empty price" do
    visit new_add_book_path
    fill_in "book[title]", with: "hyrule historia"
    fill_in "book[author]", with: "nintendo"
    fill_in "book[published_date]", with: Date.new(2019, 2, 16)
    click_on "Create Book"
    expect(page).to have_content("All Book attributes must be filled in")
  end

  scenario "empty published_date" do
    visit new_add_book_path
    fill_in "book[title]", with: "hyrule historia"
    fill_in "book[author]", with: "nintendo"
    fill_in "book[price]", with: 20.00
    click_on "Create Book"
    expect(page).to have_content("All Book attributes must be filled in")
  end
end
