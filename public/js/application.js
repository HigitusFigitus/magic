$(document).ready(function() {
  addButtonListener();
  console.log("Success");
});

var addButtonListener = function(){
  $("#scry").on("click", function(e){
    e.preventDefault();

    var target = $(this);
    var targetMethod = $(this).parent().attr("method");
    var targetAction = $(this).parent().attr("action");

    var request = $.ajax({
      type: targetMethod,
      url: targetAction
    });

    /// replace image src with whatever is sent back from the be
    request.done(function(response){
      $("#card_image").attr("src", response);
    });

    request.done(function(response){
      // error message
    });
  });
}
