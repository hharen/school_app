require "rails_helper"

RSpec.describe ParentsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/parents").to route_to("parents#index")
    end

    it "routes to #new" do
      expect(get: "/parents/new").to route_to("parents#new")
    end

    it "routes to #show" do
      expect(get: "/parents/1").to route_to("parents#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/parents/1/edit").to route_to("parents#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/parents").to route_to("parents#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/parents/1").to route_to("parents#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/parents/1").to route_to("parents#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/parents/1").to route_to("parents#destroy", id: "1")
    end
  end
end
