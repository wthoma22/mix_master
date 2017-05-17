require 'rails_helper'

RSpec.feature "User edits an artist" do
  scenario "they see the page for an edited artist" do
    artist = Artist.create(name: "Bob Marley", image_path: "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg")
    updated_artist = "Ziggy"

    visit artist_path(artist)
    click_on "Edit"
    fill_in "artist_name", with: updated_artist
    click_on "Update Artist"

    expect(page).to have_content updated_artist
    expect(page).to_not have_content artist.name
    expect(page).to have_css("img[src=\"#{artist.image_path}\"]")
  end
end
