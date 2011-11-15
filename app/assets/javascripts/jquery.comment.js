$(document).ready(function() {

  function clearCommentForm() {
    $(".new-comment-form input#comment_name").val("");
    $(".new-comment-form textarea#comment_content").val("");
  }

  function addComment(comment_html) {
    $('#comments').append(comment_html);
  }

  function onSuccess(evt, data, status, xhr){
    clearCommentForm();
    addComment(xhr.responseText);
  }

  $('.new-comment-form').bind("ajax:success", onSuccess);
});



