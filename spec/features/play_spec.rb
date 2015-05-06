require 'rails_helper'

describe "Playing number guesser" do
  describe "Valid entry" do
    it "will display a win notice if guess matches random number" do
      visit "/"
      fill_in "First number", with: "1"
      fill_in "Second number", with: "1"
      fill_in "Guess", with: "1"
      click_button "Play"
      expect(page).to have_content "You guessed correctly!"
    end

    it "will display a lose notice if guess does not match random number" do
      visit "/"
      fill_in "First number", with: "1"
      fill_in "Second number", with: "1000"
      fill_in "Guess", with: "2"
      click_button "Play"
      expect(page).to have_content "My number is"
    end
  end

  describe "Invalid entry" do
    it "will display notice of blank fields" do
      visit "/"
      fill_in "First number", with: "1"
      fill_in "Second number", with: ""
      fill_in "Guess", with: "2"
      click_button "Play"
      expect(page).to have_content "Please enter numbers in every field."
    end
  end
end
