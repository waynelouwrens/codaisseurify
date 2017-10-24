


function songSubmit () {
  document.getElementByClass("form-group").submit; //Form Submission


  var song_name = document.getElementById('song_name').value;
  var album_name = document.getElementById('song_album').value;
  var song_year = document.getElementById('song_year').value;

  if (song_name === '' || album_name ==='' || song_year === '') {
    alert( Please fill in all the fields...)
    return false;
  }

  inputField1.value = null;
  inputField2.value = null;
  inputField3.value = null;
}

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
