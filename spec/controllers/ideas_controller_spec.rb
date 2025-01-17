require 'rails_helper'

RSpec.describe IdeasController, type: :controller do
  describe "GET index" do
    it "returns a success response" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end
end
