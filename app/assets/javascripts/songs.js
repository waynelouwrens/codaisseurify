


function addSongToArtist (title) {
  var newSong = {title: title};

    $.ajax({
   type: "POST",
   url: "/songs.json",
   data: JSON.stringify({
       song: newSong
   }),
   contentType: "application/json",
   dataType: "json" })
   .done(function(data) {
   console.log(data);

  var listItem = $("<li></li>")
    .html(title);

  $("#songList").append(listItem);
  })

  .fail(function(error) {
    console.log(error);

    error_message = error.responseJSON;
    (error_message);

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

function resetErrors() {
  $("#error_message").remove();
  $("#formgroup-title").removeClass("has-error");
}

function submitSong(event) {
  event.preventDefault
  resetErrors();
  createSong($("#song_name").val());
  $("#song_name").val(null);
}

$(document).ready(function() {
  $("form").bind('submit', submitSong);
});
