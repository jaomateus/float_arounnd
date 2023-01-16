import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="refresh-list"
export default class extends Controller {
  static targets = ["list", "form", "searchInput"];

  update(event) {
    event.preventDefault();

    // If you are at the top of the page, scroll down wen clicking
    let scrollDistance = document.documentElement.clientHeight;

    if (window.scrollY === 0) {
      window.scrollBy(0, scrollDistance);
    }

    // Ajaxify floaties list
    const url = `${this.formTarget.action}?query=${this.searchInputTarget.value}`;

    fetch(url, { headers: { Accept: "text/plain" } })
      .then((response) => response.text())
      .then((data) => {
        this.listTarget.outerHTML = data;
      });
  }
}
