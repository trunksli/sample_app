require 'spec_helper'

describe "Static pages" do

  let(:base_title) {"Ruby on Rails Tutorial Sample App"}

  describe "Home page" do

    it "TEST H1 HOME-should have the h1 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Sample App')
    end

    it "TEST TITLE HOME should have the title 'Home'" do
      visit '/static_pages/home'
      expect(page).to have_title "Ruby on Rails Tutorial"
    end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      page.should_not have_selector('title', :text => '| Home')
    end

  end

  describe "Help page" do

    it "TEST H1 HELP should have the h1 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end

    it "TEST TITLE HELP should have the title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title "#{base_title} | Help"
    end
  end

  describe "About page" do

    it "TEST H1 ABOUT should have the h1 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About Us')
    end

    it "TEST TITLE ABOUT should have the title 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_title "#{base_title} | About Us"
    end
  end

  describe "Contact" do

    it "TEST H1 contact should have the h1 'Contact'" do
      visit '/static_pages/contact'
      page.should have_selector('h1', :text => 'Contact')
    end

    it "TEST TITLE CONTACT should have the title 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_title "#{base_title} | Contact"
    end
  end


end
