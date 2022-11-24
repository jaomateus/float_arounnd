import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle-map"
export default class extends Controller {
  static targets = [ "grid" , "map"]

  connect() {
    console.log("test")
  }

  toggleTargets() {
    if (this.gridTarget.classList.contains("hidden")) {
      this.gridTarget.classList.remove("hidden");
    } else {
      this.gridTarget.classList.add("hidden");
    }

    if (this.mapTarget.classList.contains("invisible")) {
      this.mapTarget.classList.remove("invisible");
    } else {
      this.mapTarget.classList.add("invisible");
    }
  }
}
