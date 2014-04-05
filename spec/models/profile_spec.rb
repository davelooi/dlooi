require 'spec_helper'

describe Profile do
  context "Create" do
    it "should pass" do
      lambda{Profile.create! name: "dave", uid: "dave"}.should be_true
    end

    it "should fail without name" do
      lambda{Profile.create! name: nil, uid: "dave"}.should raise_error
    end

    it "should fail without uid" do
      lambda{Profile.create! name: "David", uid: nil}.should raise_error
    end
    
    it "should fail invalid email" do
      lambda{Profile.create! name: "dave", email: "a.com", uid: "dave"}.should raise_error
    end

  end
end
