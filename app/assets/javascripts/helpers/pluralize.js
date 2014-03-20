Ember.Handlebars.helper('pluralize', function(number, single) {
  if (number === 1) { return number + ' ' + single; }
  else {
    var inflector = Ember.Inflector.inflector;
    return number + ' ' + inflector.pluralize(single);
  }
});