import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="navbar"
export default class extends Controller {
  static targets = ["navbar", "scrollbutton"]

  updateNavbar() {
    if (window.scrollY >= (window.innerHeight) * 0.8) {
      this.navbarTarget.classList.add("nabbar_bg")
      this.scrollbuttonTarget.classList.add("hidden")
    } else {
      this.navbarTarget.classList.remove("nabbar_bg")
      this.scrollbuttonTarget.classList.remove("hidden")
    }
  }
}
