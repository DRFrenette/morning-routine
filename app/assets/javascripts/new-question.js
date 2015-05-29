$(function() {
  var newQuestionForm = $("form#new_question");

  var postQuestionDataToServer = function() {
    var questionData = newQuestionForm.serialize();
    var conversation = $.ajax({
      url: "/questions",
      type: "POST",
      data: questionData
    });
    conversation.done(addQuestionToList);
    resetForm();
    return false;
  };

    var resetForm = function() {
      newQuestionForm.find("#question_body").val("");
      newQuestionForm.find("#question_body").focus();
    };

    newQuestionForm.submit(postQuestionDataToServer);

    var addQuestionToList = function(question) {
      var questionList = $("ul");
      questionList.prepend(question);
    };
});
