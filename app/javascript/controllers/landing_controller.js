import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="landing"
export default class extends Controller {
  static targets = ["menu"]
  initialize() {
    this.menuIsOpen = false
  }

  toggleNav() {
    console.log("Show Nav")
    if (this.menuIsOpen) {
      this.menuIsOpen = false
      this.menuTarget.classList.add("hidden")
    } else {
      this.menuIsOpen = true
      this.menuTarget.classList.remove("hidden")
    }
  }
}
