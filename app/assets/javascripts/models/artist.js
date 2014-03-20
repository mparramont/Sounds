Sounds.Artist = DS.Model.extend({
  name: DS.attr("string"),
  picture_url: DS.attr("string"),
  songs: DS.attr("number"),
  albums: DS.hasMany('album', {async: true}),
});