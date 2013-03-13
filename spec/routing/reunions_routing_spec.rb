require "spec_helper"

describe ReunionsController do
  describe "routing" do

    it "routes to #index" do
      get("/reunions").should route_to("reunions#index")
    end

    it "routes to #new" do
      get("/reunions/new").should route_to("reunions#new")
    end

    it "routes to #show" do
      get("/reunions/1").should route_to("reunions#show", :id => "1")
    end

    it "routes to #edit" do
      get("/reunions/1/edit").should route_to("reunions#edit", :id => "1")
    end

    it "routes to #create" do
      post("/reunions").should route_to("reunions#create")
    end

    it "routes to #update" do
      put("/reunions/1").should route_to("reunions#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/reunions/1").should route_to("reunions#destroy", :id => "1")
    end

  end
end
