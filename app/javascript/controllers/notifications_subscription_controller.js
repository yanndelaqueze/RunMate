import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"

// Connects to data-controller="notifications-subcription"
export default class extends Controller {
  static values = { userId: Number }
  static targets = ["pastille", "pastille-messages"]


  connect() {
    console.log("notifications controller is live !")
    this.channel = createConsumer().subscriptions.create(
      { channel: "NotificationsChannel", id: this.userIdValue },
      { received: (data) => {
        console.log(data)
        this.pastilleTarget.innerHTML = data;
        this.pastilleTarget.classList.remove("d-none")
       }
      }
    )
  }
}
