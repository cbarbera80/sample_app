require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end

    it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_title("Ruby on Rails Tutorial Sample App | Home")
    end
  end

  describe "Help page" do
    it "should have the content 'Help page'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help page')
    end

    it "should have the title 'Help'" do
      visit '/static_pages/help'
      page.should have_title("Ruby on Rails Tutorial Sample App | Help")
    end

  end

  describe "About page" do
    it "Should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

    it "should have the title 'About'" do
      visit '/static_pages/about'
      page.should have_title("Ruby on Rails Tutorial Sample App | About")
    end

  end
end