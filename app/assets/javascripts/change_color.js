$(document).ready(function(){
  $('.change-color').click(function(){
    $('li.change-color').css('background-color', 'white');
    $(this).css('background-color', '#dc3545')
  });
});
