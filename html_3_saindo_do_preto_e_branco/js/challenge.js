$(document).ready(function() {
  $('#solution').load(function() {
    var h1 = getElement("h1");
    var img = getElement("img");
    var errors = new Array();

    verify(h1.css("color") != "rgb(255, 0, 0)", "Your \'h1\' tag is not \'red\'.", errors);
    verify(img.attr("src") == null, "Your should add an image using the tag \'img\'.", errors);

    showMessage(errors);

  });
});