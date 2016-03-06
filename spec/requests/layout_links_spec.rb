require 'rails_helper'

RSpec.describe "LayoutLinks", type: :request do
  describe "GET /layout_links" do
    it "devrait trouver une page Accueil a '/'" do
    get '/'
    expect(response.body).to include("<title>Simple App du Tutoriel Ruby on Rails | Accueil</title>")
  end

  it "devrait trouver une page Contact at '/contact'" do
    get '/contact'
    expect(response.body).to include("<title>Simple App du Tutoriel Ruby on Rails | Contact</title>")
  end

  it "should have an A Propos page at '/about'" do
    get '/about'
    expect(response.body).to include("<title>Simple App du Tutoriel Ruby on Rails | A propos</title>")
  end

  it "devrait trouver une page Iade '/help'" do
    get '/help'
    expect(response.body).to include("<title>Simple App du Tutoriel Ruby on Rails | Aide</title>")
  end

  it "devrait avoir une page d'inscription at '/signup'" do
    get '/signup'
    expect(response.body).to include("<title>Simple App du Tutoriel Ruby on Rails | Inscription</title>")
  end
  end
end
