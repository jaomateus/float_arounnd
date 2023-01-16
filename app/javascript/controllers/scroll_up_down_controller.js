import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="scroll-up-down"
export default class extends Controller {

  
  scroll() {
    let scrollDistance = document.documentElement.clientHeight;
      // if (this.className.split(' ').includes('scroll-up')) {
      //     scrollDistance *= -1;
      // }
      window.scrollBy(0, scrollDistance);
  }
}
