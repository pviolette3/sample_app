# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  email      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe User do
	before(:each) do
	  @user = User.new(name: "test", email: "test@example.com")
	end
	
	subject {@user}
	
	it {should respond_to(:name)}
	it {should respond_to(:email)}
	it {should be_valid}
	
	describe "when name is not present" do
		before {@user.name = " "}
		
		it{should_not be_valid}
	end
	
	describe "when email is not present" do
		before {@user.email = " "}
		
		it {should_not be_valid}
	end
	
end
