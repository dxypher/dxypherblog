jQuery.fn.submitOnCheck = function() {
  this.find('input[type=checkbox]').click(function() {
    $(this).parent('form').submit();
  });
  return this;
}

$(function() {
  $('.edit_article').submitOnCheck();
});