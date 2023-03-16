import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"

// Connects to data-controller="notifications-subcription"
export default class extends Controller {
  static values = { userId: Number }
  static targets = ["pastille", "bell"]


  connect() {
    console.log("notifications controller is live !")
    this.channel = createConsumer().subscriptions.create(
      { channel: "NotificationsChannel", id: this.userIdValue },
      { received: (data) => {
        console.log(data)
        this.pastilleTarget.innerHTML = data;
        this.pastilleTarget.classList.remove("d-none")
        // this.bellTarget.classList.remove("notification-bell")
        this.bellTarget.classList.remove("notification-bell-shake")
        this.bellTarget.classList.remove("fa-regular")
        setTimeout(() => {
          this.bellTarget.classList.add("notification-bell-shake")
        }, 1);
        setTimeout(() => {
          this.bellTarget.classList.add("fa-solid")
        }, 1);
        setTimeout(() => {
          this.bellTarget.classList.remove("fa-solid")
          this.bellTarget.classList.add("fa-regular")
        }, 2001);
       }
      }
    )
  }
}
