$(document).on('click', '.closeNotify', function(){
  $(this).closest('div').fadeOut(500);
});
$(document).on('click', '.btn-custom', function() {
  $(this).closest('tr').fadeOut(500);
});
$(document).on('keyup', 'input#search', function() {
  $.get($('#my_form_search').attr('action'), $('#my_form_search').serialize(),
    null, 'script');
  return false;
});
$(document).on('keypress', '#my_form_search', function(event) {
  return event.keyCode != 13;
});
