$(document).on('click', '.closeNotify', function(){
  $('.alert-custom').fadeOut(500);
});
$(document).on('click', '.btn-custom', function() {
  $(this).closest('tr').fadeOut(500);
})
