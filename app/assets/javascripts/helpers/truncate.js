Ember.Handlebars.helper('truncate', function(str, len) {
  if (str.length > len) {
    return str.substring(0, len) + '…';
  } else {
    return str;
  }
});