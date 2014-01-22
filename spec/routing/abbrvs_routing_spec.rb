require "spec_helper"

describe AbbrvsController do
  describe "routing" do

    it "routes to #index" do
      get("/abbrvs").should route_to("abbrvs#index")
    end

    it "routes to #new" do
      get("/abbrvs/new").should route_to("abbrvs#new")
    end

    it "routes to #show" do
      get("/abbrvs/1").should route_to("abbrvs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/abbrvs/1/edit").should route_to("abbrvs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/abbrvs").should route_to("abbrvs#create")
    end

    it "routes to #update" do
      put("/abbrvs/1").should route_to("abbrvs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/abbrvs/1").should route_to("abbrvs#destroy", :id => "1")
    end

  end
end
