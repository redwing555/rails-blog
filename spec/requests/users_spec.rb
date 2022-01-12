require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "GET /index" do
    before(:example) { get users_path(1)}
    it "http response should be sucess" do
      
      expect(response).to have_http_status(:ok)
    end

    it "renders correct page contents" do
      
      expect(response.body).to include('List all Users')
    end
  end
end
