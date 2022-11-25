import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="total-price"
export default class extends Controller {
  static targets = ["start", "end", "text"]

  connect() {
    console.log("Total price")
    console.log(this.startTarget)
    console.log(this.endTarget.value)
    console.log(this.textTarget)
  }

  calculate() {
    console.log("calc")
    const start = this.startTarget
    const end = this.endTarget
    if (start < end) {
      console.log(end - start)
    }
  }
}
