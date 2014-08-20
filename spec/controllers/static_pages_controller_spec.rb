require 'rails_helper'

RSpec.describe StaticPagesController, :type => :controller do

  describe "GET finishing_school" do
    it "returns http success" do
      get :finishing_school
      expect(response).to be_success
    end
  end

end
