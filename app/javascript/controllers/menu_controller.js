import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "mobileMenu" ]

  // Переключение видимости (открыть/закрыть)
  toggle() {
    this.mobileMenuTarget.classList.toggle('hidden')
  }

  // Принудительное закрытие (при клике на ссылку)
  close() {
    this.mobileMenuTarget.classList.add('hidden')
  }
}
