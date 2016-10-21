$(document).ready(function() {
  addButtonListener();
});

var addButtonListener = function(){
  $("#scry-button").on("click", function(e){
    e.preventDefault();

    var target = $(this);
    var targetMethod = $(this).parent().attr("method");
    var targetAction = $(this).parent().attr("action");

    var request = $.ajax({
      type: targetMethod,
      url: targetAction
    });

    request.done(function(response){
      $("#image-container").empty();
      $("#image-container").append(response);
    });

    request.fail(function(response){
      console.log("There was a problem with the ajax request.");
    });
  });
};
