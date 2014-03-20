// For more information see: http://emberjs.com/guides/routing/

Sounds.Router.map(function() {
  this.resource("artists", function() {
    this.resource("artist", { path: ":artist_id" });
  });
});