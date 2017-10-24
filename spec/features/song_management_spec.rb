feature 'Song Management', js: true do
  scenario 'add a new song' do
    # Point your browser towards the todo path
    visit artist_song_path

    # Enter description in the text field
    fill_in 'Song name', with: 'Ladida'
    fill_in 'Album name', with: 'ThisAlbum'
    fill_in 'song_year', with: 2016

    # Press enter (to submit the form)
    page.execute_script("$('form').submit()")

    # Expect the new task to be displayed in the list of tasks
    expect(page).to have_content('Ladida')
  end
end
