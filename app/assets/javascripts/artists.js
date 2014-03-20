$(function() {
  $('#similar').load($('#similar').attr('data-load'), function() {
    $('#more-link').click(function() {
      $('#more').removeClass('hide');
      $(this).remove();
    });
  });
});
