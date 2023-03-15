import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="datetime-input"
export default class extends Controller {
  connect() {
    this.element.value = new Date().toISOString().slice(0, -8)
  }

}
