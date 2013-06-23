require 'spec_helper'

describe "Static pages" do
  
  subject { page }

  describe "Home page" do
    before { visit root_path }
    
    it {should have_selector('h1', text: 'Sample App')}
    it {expect(page).to have_title "#{full_title('')}"
    }
    it {should_not have_selector('title', text: '| Home')
    }
  end

  describe "Help page" do
    before {visit help_path}
    it {should have_selector('h1', text: 'Help')
    }
    it {expect(page).to have_title "#{full_title('Help')}"
    }
  end

  describe "About page" do
    before { visit about_path}

    it { should have_selector('h1', text:'About')}
    it {expect(page).to have_title "#{full_title('About Us')}"
    } 
  end  

  #  it "TEST H1 ABOUT should have the h1 'About Us'" do
  #    visit about_path
  #    page.should have_selector('h1', text: 'About Us')
  #  end

  #  it "TEST TITLE ABOUT should have the title 'About Us'" do
  #    visit about_path
      #expect(page).to have_title "#{base_title} | About Us"
  #  end
  #end

  describe "Contact" do
    before { visit contact_path}

    it { should have_selector('h1', text:'Contact')}
    it {expect(page).to have_title "#{full_title('Contact')}"
    } 
  end  

end #last end for describe block
