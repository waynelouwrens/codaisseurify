


function songSubmit () {
  var inputField1 = document.getElementById('song_name');
  var newSongName = inputField1.value;createSong(newSongName);

  var inputField2 = document.getElementById('song_album');
  var newSongAlbum = inputField2.value;createSong(newSongAlbum);

  var inputField3 = document.getElementById('song_year');
  var newSongYear = inputField3.value;createSong(newSongYear);

  inputField1.value = null;
  inputField2.value = null;
  inputField3.value = null;
}

function createSong() {
  var listItem = document.createElement("li");
  listItem.className = "Songs";
  var paragraph1 = document.createElement("p");
  paragraph1.innerHTML = newSongName;
  listItem.appendChild(paragraph1);
  var paragraph2 = document.createElement("p");
  paragraph2.innerHTML = newSongAlbum;
  listItem.appendChild(paragraph2);
  var paragraph3 = document.createElement("p");
  paragraph3.innerHTML = newSongYear;
  listItem.appendChild(paragraph3);

  $.ajax({
    type: "POST",
    url: "/api/artists/id",
    data: JSON.stringify({
      song: newSong
    }),
    contentType: "application/json",
    dataType: "json"})

    .fail(function(error) {
      console.log(error);

      error_message = error.responseJSON.name[0];
      showError(error_message);
    });
}

function showError(message) {
  var errorHelpBlock = $('<span class="help-block"></span>')
    .attr('id', 'error_message')
    .text(message);

  $("#formgroup-title")
    .addClass("has-error")
    .append(errorHelpBlock);
}
