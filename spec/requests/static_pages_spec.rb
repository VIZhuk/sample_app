require 'spec_helper'

describe "Static pages" do

  subject { page }

  shared_examples_for "all static pages" do
    it { should have_selector('h1', text: heading) }
    it { should have_title(full_title(page_title)) }
  end

  describe "Home Page" do
    before { visit root_path}
    let(:heading) {'Sample App'}
    let(:page_title) {''}

    it_should_behave_like "all static pages"
    it { should_not have_title('| Home')}

    # it { should have_content('Sample App') }
    # it { should have_title(full_title('')) }
    # it { should_not have_title('| Home') }

#   it "should have the content 'Sample App'" do
#     expect(page).to have_content('Sample App')
#   end

#   it "should have the base title" do
#     expect(page).to have_title("Ruby on Rails Tutorial Sample App")
#   end

#   it "should not have a custom page title" do
#     expect(page).not_to have_title("| Home")
#   end
  end

  describe "Help Page" do
    before { visit help_path }
    let(:heading) {'Help'}
    let(:page_title) {''}

    it_should_behave_like "all static pages"
  end

  describe "About Page" do
    before { visit about_path }
    let(:heading) {'About'}
    let(:page_title) {''}

    it_should_behave_like "all static pages"
  end

  describe "Contact page" do
    before { visit contact_path }
    let(:heading) {'Contact'}
    let(:page_title) {''}

    it_should_behave_like "all static pages"
  end

  it "shoould have the right links on the layout" do
    visit root_path
    click_link "About"
    expect(page).to have_title(full_title('About Us'))
    click_link "Help"
    expect(page).to have_title(full_title('Help'))
    click_link "Contact"
    expect(page).to have_title(full_title('Contact'))
    click_link "Home"
    click_link "Sign up now!"
    expect(page).to have_title(full_title('Sign up'))
    click_link "sample app"
    expect(page).to have_title(full_title(''))
  end
end









