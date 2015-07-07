// $('a.upvote').click(function(e){
//   console.log("upvote was clicked")
//   e.preventDefault();
//   $(this).innerHTML = "HEY";
// });

$( "a.upvote" ).click(function( event ) {
  event.preventDefault();
  event.stopPropagation();
  $(this).append("HEY");
});