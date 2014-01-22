require "spec_helper"

describe FteamsController do
  describe "routing" do

    it "routes to #index" do
      get("/fteams").should route_to("fteams#index")
    end

    it "routes to #new" do
      get("/fteams/new").should route_to("fteams#new")
    end

    it "routes to #show" do
      get("/fteams/1").should route_to("fteams#show", :id => "1")
    end

    it "routes to #edit" do
      get("/fteams/1/edit").should route_to("fteams#edit", :id => "1")
    end

    it "routes to #create" do
      post("/fteams").should route_to("fteams#create")
    end

    it "routes to #update" do
      put("/fteams/1").should route_to("fteams#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/fteams/1").should route_to("fteams#destroy", :id => "1")
    end

  end
end
