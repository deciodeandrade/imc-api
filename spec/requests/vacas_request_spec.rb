require 'rails_helper'

RSpec.describe "Vacas", type: :request do

  describe "GET /create" do
    it "returns http success" do
      get "/vacas/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/vacas/show"
      expect(response).to have_http_status(:success)
    end
  end

end
