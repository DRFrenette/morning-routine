function setWordCount() {
  var wordCount;
  var body = $(".writing-area textarea").val().trim();

  if (body === "") {
    wordCount = 0;
  } else {
    wordCount = body.split(/\s+/).length;
  }

  $(".word-count").text(wordCount);
}

$(function() {
  $("textarea").on('input', setWordCount)

  $("#save").click(function() {
    $(".writing-area").submit();
    return false;
  });

  $(".close").hover(function() {
    $(".save-quit").toggleClass("hidden");
  });
})
