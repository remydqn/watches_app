function autocomplete() {
  document.addEventListener("DOMContentLoaded", function() {
    var watchAddress = document.getElementById('watch_address');

    if (watchAddress) {
      var autocomplete = new google.maps.places.Autocomplete(watchAddress, { types: [ 'geocode' ] });
      google.maps.event.addDomListener(watchAddress, 'keydown', function(e) {
        if (e.key === "Enter") {
          e.preventDefault(); // Do not submit the form on Enter.
        }
      });
    }
  });
}

export { autocomplete };
