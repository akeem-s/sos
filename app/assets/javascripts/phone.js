$(document).ready(function(){
  $("#phone-form").on("submit", function(event){
    event.preventDefault();
    alert("hit the preventDefault")
  })
})