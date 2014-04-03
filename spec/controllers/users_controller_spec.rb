require 'spec_helper'

describe UsersController do
  render_views
  context "GET /about" do
    it "should respond with success" do
      get :about
      expect(response).to be_success
      expect(response).to render_template("users/about")
    end
    
    it "should says 'About Us'" do
      get :about
      expect(response.body).to include("About Us", "Looi David", "Seow Suet Ling")
    end
  end
  
  context "GET /zxcvbnm" do
    it "should raise error" do
      lambda {get '/zxcvbnm'}.should raise_error(ActionController::RoutingError)      
    end
  end
end
