require 'spec_helper'

describe Cheat do
  context "Create new" do
    it "should pass" do
      lambda{Cheat.create! cheat: "git status", product_id: 999}.should be_true
    end

    it "should fail without a product" do
      lambda{Cheat.create! cheat: "git status", product_id: nil}.should raise_error
    end

    it "should fail without a cheat" do
      lambda{Cheat.create! cheat: nil, product_id: 999}.should raise_error
    end
  end
end
