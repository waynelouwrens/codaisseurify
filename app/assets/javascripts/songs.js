$(function() {
  $("form"  ).submit(function(event) {
    event.preventDefault();

    var action = $(this).attr('action');
    var method = $(this).attr('method');

    var song_name = $(this).find('#song_name').val();
    var song_album = $(this).find('#song_album').val();
    var song_year = $(this).find('#song_year').val();
    var data = $(this).serializeArray();

    $.ajax ({
      method: method,
      url: action,
      data: { name: name, album: album, year: year }

      dataType: 'script'
    });


  });
});
