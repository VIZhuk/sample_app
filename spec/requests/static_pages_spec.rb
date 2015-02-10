require 'spec_helper'

#describe "StaticPages" do
#  describe "GET /static_pages" do
#    it "works! (now write some real specs)" do
#      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
#      get static_pages_index_path
#      response.status.should be(200)
#    end
#  end
#end

describe "Static pages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }
  subject { page }

  describe "Home Page" do
    before { visit root_path}

    it { should have_content('Sample App') }
    it { should have_title(full_title('')) }
    it { should_not have_title('| Home') }

#   it "should have the content 'Sample App'" do
#     expect(page).to have_content('Sample App')
#   end

#   it "should have the base title" do
#     expect(page).to have_title("Ruby on Rails Tutorial Sample App")
#   end

#   it "should not have a custom page title" do
#     expect(page).to have_title("| Home")
#   end
  end

  describe "Help Page" do

    before { visit help_path }

    it { should have_content('Help') }
    it { should have_title(full_title('')) }
    # it "should have the content 'Help'" do
    #   visit help_path
    #   expect(page).to have_content('Help')
    # end
    #
    # it "should have the right title" do
    #   visit help_path
    #   expect(page).to have_title("#{base_title} | Help")
    # end
  end

  describe "About Page" do

    before { visit about_path }

    it { should have_content('About') }
    it { should have_title(full_title('')) }
    # it "should have the content 'About Us'" do
    #   visit about_path
    #   expect(page).to have_content('About Us')
    # end
    #
    # it "should have the right title" do
    #   visit about_path
    #   expect(page).to have_title("#{base_title} | About Us")
    # end
  end

  describe "Contact" do

    before { visit contact_path }

    it { should have_content('Contact') }
    it { should have_title(full_title('')) }

    # it "should have the content 'Contact'" do
    #   visit contact_path
    #   expect(page).to have_content('Contact')
    # end
    #
    # it "should have the right title" do
    #   visit contact_path
    #   expect(page).to have_title("#{base_title} | Contact")
    # end
  end

end