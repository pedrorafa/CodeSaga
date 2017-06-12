$(document).ready(function() {
  $('#solution').load(function() {
    var h2 = getText("h2");
    var link = getElement("a");
    var errors = new Array();

    verify(strcmp("Experiência", h2), "The tag \'h2\' should contain \'Experiência\'.", errors);

    verify(link.text().length == 0, "You must add at least one link, using the \'a\' tag.", errors);
    verify(link.attr("href") == null, "Your link should reference another page.", errors);

    showMessage(errors);
  });
});