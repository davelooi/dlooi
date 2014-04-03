require 'spec_helper'

describe "routing" do
  context "route to root" do
    it "should route / to welcome#index" do
      expect(:get => "/").to route_to(
        :controller => "welcome",
        :action => "index"
      )
    end
  end

  context "route to admin" do
    it "routes /admin to admin" do
      expect(:get => "/admin").to route_to(
        :controller => "admin/dashboard",
        :action => "index"
      )
    end
  end

  context "route to users" do
    it "routes /:uid to users#show for uid" do
      expect(:get => "/dlooi").to route_to(
        :controller => "users",
        :action => "show",
        :uid => "dlooi"
      )
    end
  end
  
  context "route to cheatsheet" do
    it "routes /cheats to cheats#index" do
      expect(:get => "/cheats").to route_to(
        :controller => "cheats",
        :action => "index"
      )
    end
  end

end
