var indexUri = '/index.yaml'

var getIndex = function() {
  var r = new XMLHttpRequest();
  r.open("GET", indexUri, true);
  r.onreadystatechange = function () {
    if (r.readyState != 4 || r.status != 200) return;
    alert("Success: " + r.responseText);
  };
  var res = r.send();
  return res;
}

var init = function() {
  var index = getIndex();

  var indexObj = yaml.safeLoad(index);
}

init();