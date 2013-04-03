require "spec_helper"

describe CompromisesController do
  describe "routing" do

    it "routes to #index" do
      get("/compromises").should route_to("compromises#index")
    end

    it "routes to #new" do
      get("/compromises/new").should route_to("compromises#new")
    end

    it "routes to #show" do
      get("/compromises/1").should route_to("compromises#show", :id => "1")
    end

    it "routes to #edit" do
      get("/compromises/1/edit").should route_to("compromises#edit", :id => "1")
    end

    it "routes to #create" do
      post("/compromises").should route_to("compromises#create")
    end

    it "routes to #update" do
      put("/compromises/1").should route_to("compromises#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/compromises/1").should route_to("compromises#destroy", :id => "1")
    end

  end
end
