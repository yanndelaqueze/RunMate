import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="search-display"
export default class extends Controller {
  static targets = ["dates"]
  connect() {
  }

  show(event) {
    console.log("hello");
  }
}
