require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      page.should have_content('Sample App')
    end

    it "should have the baes title" do
    	visit '/static_pages/home'
    	page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App")
    end

    it "should not have a custom page title" do
    	visit '/static_pages/home'
    	page.should_not have_selector('title', :text =>'|Home')
    end
   

  end
end