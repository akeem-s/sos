$(document).ready(function(){
  $("#phone-form").on("submit", function(event){
    event.preventDefault();
    
    $.ajax({
      type: "POST",
      url: "/phones/call",
      data: $(event.target).serialize(),
      dataType: "JSON"
    }).fail(function(response){
      $('#phone-form')[0].reset();
    });
  })
})