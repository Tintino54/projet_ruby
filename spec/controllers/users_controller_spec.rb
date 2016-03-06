require 'rails_helper'

RSpec.describe UsersController, type: :controller do
	render_views
  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end

    it "devrait avoir le titre adequat" do
      get :new
      expect(response.body).to include("<title>Simple App du Tutoriel Ruby on Rails | Inscription</title>")
    end
  end

end
