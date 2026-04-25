import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["overlay", "fullImage"]

  open(event) {
    const src = event.currentTarget.src
    this.fullImageTarget.src = src
    this.overlayTarget.classList.remove("hidden")
    document.body.classList.add("overflow-hidden") // Запрет прокрутки
  }

  close() {
    this.overlayTarget.classList.add("hidden")
    document.body.classList.remove("overflow-hidden")
  }
}
