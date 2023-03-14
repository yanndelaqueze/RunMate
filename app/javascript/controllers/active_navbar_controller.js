import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="active-navbar"
export default class extends Controller {
  static targets = ["index", "create", "chatroom"]

  connect() {
    console.log(this.indexTarget);
  }

  activate(event) {
    // event.preventDefault();
    const url = location.pathname;
    if (url === "/runs") {
      this.indexTarget.classList.add("active")
    };

  }
}

location.pathname
