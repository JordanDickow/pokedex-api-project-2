require 'rails_helper'

RSpec.describe "Pokemons", type: :request do
  describe "GET /pokemons" do
    it "works! (now write some real specs)" do
      get pokemons_path
      expect(response).to have_http_status(200)
    end
  end
end
