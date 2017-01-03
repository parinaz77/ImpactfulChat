$(document).ready(function() {
  post();
});

var post = function(){
  $('.post_i').on('submit',function(event){
    event.preventDefault();

    var method = $(this).attr("method");
    var action = $(this).attr("action");
    var input  = $(this).serialize();

   $.ajax({
      url: action,
      method: method,
      data: input
    }).done(function(response){
      // var className = $('#post_item').attr('class')
      $('#show_post').append(response)
      $('.post_i').trigger('reset')
      // debugger;
    })
    .fail(function(response){
      console.log(response)
    })
  });
}
