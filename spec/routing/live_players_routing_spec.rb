require "spec_helper"

describe LivePlayersController do
  describe "routing" do

    it "routes to #index" do
      get("/live_players").should route_to("live_players#index")
    end

    it "routes to #new" do
      get("/live_players/new").should route_to("live_players#new")
    end

    it "routes to #show" do
      get("/live_players/1").should route_to("live_players#show", :id => "1")
    end

    it "routes to #edit" do
      get("/live_players/1/edit").should route_to("live_players#edit", :id => "1")
    end

    it "routes to #create" do
      post("/live_players").should route_to("live_players#create")
    end

    it "routes to #update" do
      put("/live_players/1").should route_to("live_players#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/live_players/1").should route_to("live_players#destroy", :id => "1")
    end

  end
end
