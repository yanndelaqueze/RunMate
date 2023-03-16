import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"

export default class extends Controller {
  static values = { runId: Number, userId: Number }
  static targets = ["messages", "message"]

  connect() {
    this.messagesTarget.scrollTo(0, this.messagesTarget.scrollHeight)
    this.channel = createConsumer().subscriptions.create(
      { channel: "RunChannel", id: this.runIdValue },
      {
        received: (data) => {
          console.log(data);
          this.#insertMessageAndScrollDown(data)
          const message = this.messageTargets[this.messageTargets.length - 1]
          console.log(message);
          if (this.userIdValue != data.author_id) {
            message.classList.add("chat-box-left")
            message.classList.remove("chat-box-right")
          }
        }
      }
    )
    console.log(`Subscribe to the chatroom with the id ${this.runIdValue}.`)
  }

  #insertMessageAndScrollDown(data) {
    this.messagesTarget.insertAdjacentHTML("beforeend", data.html)
    this.messagesTarget.scrollTo(0, this.messagesTarget.scrollHeight)
  }


  resetForm(event) {
    event.target.reset()
  }

  disconnect() {
    console.log("Unsubscribed from the chatroom")
    this.channel.unsubscribe()
  }

}
