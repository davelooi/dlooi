require 'spec_helper'

describe User do
  context "Create" do
    it "should pass" do
      lambda{User.create! name: "dave", uid: "dave"}.should be_true
    end

    it "should fail without name" do
      lambda{User.create! name: nil, uid: "dave"}.should raise_error
    end

    it "should fail without uid" do
      lambda{User.create! name: "David", uid: nil}.should raise_error
    end
    
    it "should fail invalid email" do
      lambda{User.create! name: "dave", email: "a.com", uid: "dave"}.should raise_error
    end

  end
end
