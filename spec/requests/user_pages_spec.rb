require 'spec_helper'

describe "UserPages" do
  subject { page }
  
  describe "signup page" do

    before { visit signup_path }

    	it {should have_selector('h1', text: 'Sign up')}	
    	it {expect(page).to have_title "#{full_title('Sign up')}"}
  end
  
  describe "profile page" do
    let(:user) { FactoryGirl.create(:user) }#code to make a user variable
    before { visit user_path(user) }
    	it {should have_selector('h1', text: user.name) }	
    	it {expect(page).to have_title(user.name)}      
  end

  describe "signup" do
      before { visit signup_path }
      let(:submit) {"Create my account"}

      describe "with invalid information" do
        it "should not create a user" do 
          expect { click_button submit }.not_to change(User, :count)
        end  
      end

      describe "with valid info" do
        before do
          fill_in "Name", with: "example user"
          fill_in "Email", with: "user@example.com"
          fill_in "Password", with: "foobar"
          fill_in "Confirmation", with: "foobar"
        end

        it "should create a user" do
          expect { click_button submit }.to change(User, :count).by(1)
        end

      end #visit with valid info
  
  end #signup

end #end of user test
