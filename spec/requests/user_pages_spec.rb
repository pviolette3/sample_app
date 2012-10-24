require 'spec_helper'

describe "UserPages" do
	subject { page }
	
	describe "signup page" do
		before(:each) {visit signup_path}
		
		it {should have_selector('h1', :text => 'Sign up')}
		it {should have_selector('title', :title => full_title('Sign up'))}
	end
	
	describe "user profile page" do
		let(:user) { FactoryGirl.create(:user) }
		before(:each) { visit user_path(user) }
		
		it {should have_selector('h1', text: user.name)}
		it {should have_selector('title', text: user.name)}
	end
end
