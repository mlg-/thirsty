$( "a.upvote i" ).click(function( event ) {
  event.preventDefault();
  event.stopPropagation();
  $(this).toggleClass("gold");
  var reviewId = $(this).attr('id').match(/review-([0-9]+)/)[1];
  var downvote = "#downvote-" + reviewId + " i"
  $(downvote).removeClass("gold");


  $.ajax({
  type: "POST",
  url: "/reviews/" + reviewId + "/votes",
  data: { value: 1 },
  dataType: "json",
  success: function(vote){
    currentVoteCount(reviewId);

    }
  });


});

$( "a.downvote i" ).click(function( event ) {
  event.preventDefault();
  event.stopPropagation();
  $(this).toggleClass("gold");
  var reviewId = $(this).attr('id').match(/review-([0-9]+)/)[1];
  var upvote = "#upvote-" + reviewId + " i"
  $(upvote).removeClass("gold");

  $.ajax({
  type: "POST",
  url: "/reviews/" + reviewId + "/votes",
  data: { value: -1 },
  dataType: "json",
  success: function(vote){
    currentVoteCount(reviewId);

    }
  });


});

function currentVoteCount(reviewId){
  $.ajax({
  type: "GET",
  url: "/reviews/" + reviewId + "/votes",
  dataType: "json",
  success: function(score){
    var votesSelector = "#review-" + reviewId + " .votes";
    $(votesSelector).html(score);
    }
  })
};

