class GMap {
  constructor() {
    document.querySelectorAll(".acf-map").forEach(el => {
      this.new_map(el)
    })
  }

  new_map($el) {
    var $markers = $el.querySelectorAll(".marker")

    var args = {
      zoom: 16,
      center: new google.maps.LatLng(0, 0),
      mapTypeId: google.maps.MapTypeId.ROADMAP
    }

    var map = new google.maps.Map($el, args)
    map.markers = []
    var that = this

    // add markers
    $markers.forEach(function (x) {
      that.add_marker(x, map)
    })

    // center map
    this.center_map(map)
  } // end new_map

  add_marker($marker, map) {
    var latlng = new google.maps.LatLng($marker.getAttribute("data-lat"), $marker.getAttribute("data-lng"))

    var marker = new google.maps.Marker({
      position: latlng,
      map: map
    })

    map.markers.push(marker)

    // if marker contains HTML, add it to an infoWindow
    if ($marker.innerHTML) {
      // create info window
      var infowindow = new google.maps.InfoWindow({
        content: $marker.innerHTML
      })

      // show info window when marker is clicked
      google.maps.event.addListener(marker, "click", function () {
        infowindow.open(map, marker)
      })
    }
  } // end add_marker

  center_map(map) {
    var bounds = new google.maps.LatLngBounds()

    // loop through all markers and create bounds
    map.markers.forEach(function (marker) {
      var latlng = new google.maps.LatLng(marker.position.lat(), marker.position.lng())

      bounds.extend(latlng)
    })

    // only 1 marker?
    if (map.markers.length == 1) {
      // set center of map
      map.setCenter(bounds.getCenter())
      map.setZoom(16)
    } else {
      // fit to bounds
      map.fitBounds(bounds)
    }
  } // end center_map
}

// Function to load the Google Maps API
function loadGoogleMapsAPI(callback) {
  const existingScript = document.getElementById('googleMaps')

  if (!existingScript) {
    const script = document.createElement('script')
    script.src = 'https://maps.googleapis.com/maps/api/js?key=//google api key here &callback=initMap'
    script.id = 'googleMaps'
    script.async = true
    script.defer = true
    document.body.appendChild(script)

    script.onload = () => {
      if (callback) callback()
    }
  }

  if (existingScript && callback) callback()
}

// Initialize the map
function initMap() {
  new GMap()
}

// Load the API and initialize the map
document.addEventListener('DOMContentLoaded', function () {
  loadGoogleMapsAPI(initMap)
})

export default GMap
