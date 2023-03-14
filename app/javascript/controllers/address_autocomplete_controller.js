import { Controller } from "@hotwired/stimulus"
import MapboxGeocoder from "@mapbox/mapbox-gl-geocoder"

// Connects to data-controller="address-autocomplete"
export default class extends Controller {
  static values = { apiKey: String }

  static targets = ["address", "dates"]

  connect() {
    this.geocoder = new MapboxGeocoder({
      accessToken: this.apiKeyValue,
      types: "country,region,place,postcode,locality,neighborhood,address",
    })

    this.geocoder.addTo(this.element)
    this.geocoder.on("result", event => this.#setInputValue(event))
    this.geocoder.on("clear", () => this.#clearInputValue())

    const search = document.getElementsByClassName('mapboxgl-ctrl-geocoder--input')
    search[0].placeholder = 'Search address'

    this.#setInputName();

    // document.querySelector('.mapboxgl-ctrl-geocoder--input').addEventListener('click', function() {
    //   const expand = document.getElementById('expand-search');
    //   if (expand.classList.contains('d-none'))  {
    //     expand.classList.remove('d-none')
    //     expand.classList.add('d-flex')
    //   }
    // })
  }

  #setInputValue(event) {
    this.addressTarget.value = event.result["place_name"]
  }

  #clearInputValue() {
    this.addressTarget.value = ""
  }

  disconnect() {
    this.geocoder.onRemove()
  }

  #setInputName() {
    document.querySelector(".mapboxgl-ctrl-geocoder--input").setAttribute("name", "query")
  }
}
