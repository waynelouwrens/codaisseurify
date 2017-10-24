require 'rails_helper'

describe "The user views a list of artists" do
  it "shows all the artists" do
    visit artists_url

    expect(page).to have_text(@artist)
  end
end
