import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar"
export default class extends Controller {
  connect() {
  }

  updateNavbar() {
    if (window.scrollY >= window.innerHeight) {
      this.element.classList.add("nabbar_bg")
    } else {
      this.element.classList.remove("nabbar_bg")
    }
  }

}
