require "spec_helper"

describe ArtifactsController do
  describe "routing" do

    it "routes to #index" do
      get("/artifacts").should route_to("artifacts#index")
    end

    it "routes to #new" do
      get("/artifacts/new").should route_to("artifacts#new")
    end

    it "routes to #show" do
      get("/artifacts/1").should route_to("artifacts#show", :id => "1")
    end

    it "routes to #edit" do
      get("/artifacts/1/edit").should route_to("artifacts#edit", :id => "1")
    end

    it "routes to #create" do
      post("/artifacts").should route_to("artifacts#create")
    end

    it "routes to #update" do
      put("/artifacts/1").should route_to("artifacts#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/artifacts/1").should route_to("artifacts#destroy", :id => "1")
    end

  end
end
