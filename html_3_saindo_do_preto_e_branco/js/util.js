function showMessage(errors) {
  var result = $("#result");
  if (errors.length == 0){
    result.addClass("alert-success");
    result.append("Success. You are ready to the next challenge.");
  }
  else {
    result.addClass("alert-danger");
    result.append("Ops... You still have " + errors.length + " errors:<br>");
    result.append(errors.join("<br>"));
  }
}

function getText(elem) {
  return $("#solution").contents().find(elem).text();
}

function getElement(elem) {
  return $("#solution").contents().find(elem);
}

function verify(expr, message, errors) {
  expr && errors.push(message);
}

function strcmp(a, b) {
  return (a<b?-1:(a>b?1:0));
}
