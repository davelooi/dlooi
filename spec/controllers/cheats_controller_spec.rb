require 'spec_helper'

describe CheatsController do
  context "GET /cheats" do
    it "should respond with success" do
      get :index
      expect(response).to be_success
      expect(response).to render_template("cheats/index")
    end
  end
end
