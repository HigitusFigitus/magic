$(document).ready(function() {
  addButtonListener();
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

    request.done(function(response){
      console.log("Response retrieved.");
      $("#image_div").empty();
      $("#image_div").append(response);
    });

    request.fail(function(response){
      console.log("There was a problem with the ajax request.");
    });
  });
};
