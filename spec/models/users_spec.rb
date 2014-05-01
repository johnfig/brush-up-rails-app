require 'spec_helper'

describe User do
  let(:user)  { FactoryGirl.create :user }

  context "Create User" do
    it "User is created with correct attributes" do
      user.first_name.should == "John"
    end

    it "should set full name upon save" do
      user.full_name.should == "John Fig"
    end

    it "should fail to save if length is below 6" do
      ap user
      user.update(password: "wrong")
      ap user
      user.password.should == "password"
    end
  end
end