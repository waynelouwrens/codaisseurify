Photo.destroy_all
Song.destroy_all
Artist.destroy_all


# ARTISTS
kelly_clarkson = Artist.create!({ name: "Kelly Clarkson"})
lionel_richie = Artist.create!({ name: "Lionel Richie"})
celine_dion = Artist.create!({ name: "Celine Dion"})
michael_buble = Artist.create!({ name: "Michael Buble"})

# SONGS

love_so_soft = Song.create!({
  name: "Love So Soft",
  year: 2017,
  album: "Meaning of Life",
  artist: kelly_clarkson
  })

all_night_long = Song.create!({
  name: "All Night Long",
  year: 1983,
  album: "Can't Slow Down",
  artist: lionel_richie
  })

thats_the_way_it_is = Song.create!({
  name: "That's the way it is",
  year: 2007,
  album: "Taking Chances",
  artist: celine_dion
  })

home = Song.create!({
  name: "Home",
  year: 2005,
  album: "It's Time",
  artist: michael_buble
  })

  # PHOTOS
  photo1 = Photo.create!(
    remote_image_url:"http://res.cloudinary.com/waynelouwrens/image/upload/v1508058257/KellyClarkson_emr5wv.jpg",
    artist: kelly_clarkson)

  photo2 = Photo.create!(
    remote_image_url:"http://res.cloudinary.com/waynelouwrens/image/upload/c_scale,w_400/v1508058395/LionelRichie_i9mxyj.jpg",
    artist: lionel_richie)

  photo3 = Photo.create!(
    remote_image_url:"http://res.cloudinary.com/waynelouwrens/image/upload/c_scale,w_400/v1508058395/MichaelBuble_d7zfwp.jpg",
    artist: michael_buble)

  photo4 = Photo.create!(
    remote_image_url:"http://res.cloudinary.com/waynelouwrens/image/upload/c_scale,w_400/v1508058395/CelinDion_hsdclf.jpg",
    artist: celine_dion)
