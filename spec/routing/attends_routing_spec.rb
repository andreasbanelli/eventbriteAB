require "rails_helper"

RSpec.describe AttendsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/attends").to route_to("attends#index")
    end

    it "routes to #new" do
      expect(:get => "/attends/new").to route_to("attends#new")
    end

    it "routes to #show" do
      expect(:get => "/attends/1").to route_to("attends#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/attends/1/edit").to route_to("attends#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/attends").to route_to("attends#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/attends/1").to route_to("attends#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/attends/1").to route_to("attends#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/attends/1").to route_to("attends#destroy", :id => "1")
    end

  end
end
