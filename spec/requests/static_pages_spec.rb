require 'spec_helper'

describe "Static pages" do

  subject {page}
  #good example
  describe "Home page" do
    before {visit root_path}

    it { should have_selector('h1', text: 'My Twitter') }
    it { should have_selector('title', :text => "MyTwitter") }
    it { should_not have_selector('title', :text => '| Home') }
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit help_path
      page.should have_content('Help')
    end

     it "should have the right title" do
    	visit help_path
    	page.should have_selector('title', :text => "MyTwitter | Help")
    end
  end

   describe "About page" do

   	it "should have the content 'About Us'" do
     	# Run the generator again with the --webrat flag if you want to use webrat methods/matchers
   		visit about_path
    	page.should have_content('About Us')
    end
     it "should have the right title" do
    	visit about_path
    	page.should have_selector('title', :text => "MyTwitter | About Us")
    end
  end

    describe "Contact page" do

    it "should have the h1 'Contact'" do
      visit contact_path
      page.should have_selector('h1', text: 'Contact')
    end

    it "should have the title 'Contact'" do
      visit contact_path
      page.should have_selector('title',
                    text: "MyTwitter | Contact")
    end
  end

end
