require "rails_helper"

RSpec.describe LandingPagesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/landing_pages").to route_to("landing_pages#index")
    end

    it "routes to #new" do
      expect(:get => "/landing_pages/new").to route_to("landing_pages#new")
    end

    it "routes to #show" do
      expect(:get => "/landing_pages/1").to route_to("landing_pages#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/landing_pages/1/edit").to route_to("landing_pages#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/landing_pages").to route_to("landing_pages#create")
    end

    it "routes to #update" do
      expect(:put => "/landing_pages/1").to route_to("landing_pages#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/landing_pages/1").to route_to("landing_pages#destroy", :id => "1")
    end

  end
end
