import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    // Автоматически закрыть через 5 секунд
    setTimeout(() => {
      this.close()
    }, 5000)
  }

  close() {
    this.element.classList.add("opacity-0", "translate-x-10")
    setTimeout(() => {
      this.element.remove()
    }, 500)
  }
}
