$(document).ready(function() {
  $('#back').hide();
  $('.feedback').hide();

  $('body').on('click', '#input', function() { //click on a button, delegating a answer?
    $(this).prev().children('#back').show('hidden'); //the hidden something
    $(this).next().show('.feedback'); 
    $('#input').hide(); //the hidden something
  });


  $('.feedback input').click(function() {
    $.post('/card', function(card) {
      $('#card').children().remove();
      $('#card').append(card);
      $('#back').hide();
      $('.feedback').hide();
      $('#input').show();  
    });
    var pressed = $(this).attr('id');
    var data = {pressed: pressed, deck_id: deck_id};
    $.post('/increment_counter', data);
  });
});

