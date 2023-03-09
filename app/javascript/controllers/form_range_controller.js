import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="form-range"
export default class extends Controller {
  static targets = ["valueKm", "labelKm", "valuePeople", "labelPeople"]
  connect() {
    console.log(this.labelPeopleTarget.innerText)
    console.log(this.valuePeopleTarget.value)
  }

  changeKm() {
    // console.log(this.valueTarget.value);
    this.labelKmTarget.innerText = this.valueKmTarget.value;
  }
  changePeople() {
    // console.log(this.valueTarget.value);
    this.labelPeopleTarget.innerText = this.valuePeopleTarget.value;
  }
}
