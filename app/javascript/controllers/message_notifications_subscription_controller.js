import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"

// Connects to data-controller="message-notifications-subcription"
export default class extends Controller {
  static values = { userId: Number }
  static targets = ["pastillemessages"]


  connect() {
    console.log("message notifications controller is live !")
    this.channel = createConsumer().subscriptions.create(
      { channel: "MessageNotificationsChannel", id: this.userIdValue },
      { received: (data) => {
        this.pastillemessagesTarget.innerText = data;
        this.pastillemessagesTarget.classList.remove("d-none")
       }
      }
    )
  }
}
