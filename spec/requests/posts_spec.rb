require 'rails_helper'

RSpec.describe "Posts", type: :request do
  describe "GET /index" do
    before(:example) { get user_posts_path(1)}

    it "http response should be sucess" do
      
      expect(response).to have_http_status(:ok)
    end

    it "renders correct page contents" do
      
      expect(response.body).to include('Show all posts')
    end

    it "renders index template" do
      expect(response).to render_template('index')
    end
  end
end
