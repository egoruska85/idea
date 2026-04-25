import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["overlay"]

  open() {
    this.overlayTarget.classList.remove("hidden")
    document.body.classList.add("overflow-hidden") // Отключаем скролл страницы
  }

  close() {
    this.overlayTarget.classList.add("hidden")
    document.body.classList.remove("overflow-hidden") // Возвращаем скролл
  }

  // Закрытие по кнопке Esc
  disconnect() {
    document.body.classList.remove("overflow-hidden")
  }
}
