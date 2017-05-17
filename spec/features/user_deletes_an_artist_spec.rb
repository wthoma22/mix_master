require 'rails_helper'

RSpec.feature "user deletes an artist" do
  scenario "they see the artist index and delete an artist" do
    artist = Artist.create(name: "Bob Marley", image_path: "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg")

    visit artist_path(artist)
    click_on "Delete"

    expect(page).to_not have_content artist.name
    expect(page).to_not have_css("img[src=\"#{artist.image_path}\"]")
  end
end
