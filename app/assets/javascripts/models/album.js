Sounds.Album = DS.Model.extend({
  name: DS.attr("string"),
  artist: DS.belongsTo('artist')
});