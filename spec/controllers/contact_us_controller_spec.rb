require 'rails_helper'

RSpec.describe ContactUsController, :type => :controller do

  describe "GET teacher" do
    it "returns http success" do
      get :teacher
      expect(response).to be_success
    end
  end

  describe "GET project_owner" do
    it "returns http success" do
      get :project_owner
      expect(response).to be_success
    end
  end

  describe "GET create" do
    it "returns http success" do
      get :create
      expect(response).to be_success
    end
  end

end
