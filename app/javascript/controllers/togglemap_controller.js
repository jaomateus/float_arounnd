import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle-map"
export default class extends Controller {
  static targets = [ "grid" , "map", "button"]

  connect() {
    console.log("test")
  }

  toggleTargets() {
    if (this.gridTarget.classList.contains("hidden")) {
      this.gridTarget.classList.remove("hidden");
      this.buttonTarget.innerText = "Show map"
    } else {
      this.gridTarget.classList.add("hidden");
      this.buttonTarget.innerText = "Show list"
    }

    if (this.mapTarget.classList.contains("invisible")) {
      this.mapTarget.classList.remove("invisible");
    } else {
      this.mapTarget.classList.add("invisible");
    }
  }
}
