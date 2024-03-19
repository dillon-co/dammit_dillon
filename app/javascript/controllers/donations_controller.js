import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="donations"
export default class extends Controller {
  static targets = ["hash", "isCopied"]
  connect() {
  }

  copy() {
    console.log("Copy")
    console.log(this.hashTarget.value)
    this.isCopiedTarget.classList.remove("hidden")
    navigator.clipboard.writeText(this.hashTarget.value)
  }
}
