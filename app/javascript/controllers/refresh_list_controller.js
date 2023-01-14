import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="refresh-list"
export default class extends Controller {

  static targets = ["list", "form", "searchInput"]

  connect() {
    console.log(this.element)
    console.log(this.listTarget)
    console.log(this.formTarget)
  }

  update(event) {
    event.preventDefault()

    const url = `${this.formTarget.action}?query=${this.searchInputTarget.value}`
    console.log(url)

    fetch(url, { headers: { 'Accept': 'text/plain' } })
      .then(response => response.text())
      .then((data) => {
        this.listTarget.outerHTML = data;
      })
  }
}
