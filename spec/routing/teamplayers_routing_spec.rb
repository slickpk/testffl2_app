require "spec_helper"

describe TeamplayersController do
  describe "routing" do

    it "routes to #index" do
      get("/teamplayers").should route_to("teamplayers#index")
    end

    it "routes to #new" do
      get("/teamplayers/new").should route_to("teamplayers#new")
    end

    it "routes to #show" do
      get("/teamplayers/1").should route_to("teamplayers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/teamplayers/1/edit").should route_to("teamplayers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/teamplayers").should route_to("teamplayers#create")
    end

    it "routes to #update" do
      put("/teamplayers/1").should route_to("teamplayers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/teamplayers/1").should route_to("teamplayers#destroy", :id => "1")
    end

  end
end
