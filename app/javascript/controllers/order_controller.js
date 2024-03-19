import { Controller } from "@hotwired/stimulus"
// import {isWeb3, connectWeb3} from "../connect-wallet"
// import {Web3} from "web3"

export default class extends Controller {
  static targets = ["size", "price"]
  initialize() {
    this.firstName = this.localStorage.getItem('firstName') || null
    this.lastName = this.localStorage.getItem('lastName') || null
    this.email = this.localStorage.getItem('email') || null
    this.selectedSize = this.localStorage.getItem("size") || "large"
    this.selectLarge()
}

selectSmall() {
    console.log("meow")
    this.sizeTargets[0].classList.add("ring-2",  "ring-indigo-500")
    this.sizeTargets[1].classList.remove("ring-2",  "ring-indigo-500")
    this.sizeTargets[2].classList.remove("ring-2",  "ring-indigo-500")
    this.priceTarget.textContent = "0.007 BTC"
    this.selectedSize = "small"
    this.logalStorage.setitem("size", "small")
}

selectMedium() {
    this.sizeTargets[0].classList.remove("ring-2",  "ring-indigo-500")
    this.sizeTargets[1].classList.add("ring-2",  "ring-indigo-500")
    this.sizeTargets[2].classList.remove("ring-2",  "ring-indigo-500")
    this.priceTarget.textContent = "0.012 BTC"
    this.selectedSize = "medium"
    this.logalStorage.setitem("size", "medium")
}

selectLarge() {
    this.sizeTargets[0].classList.remove("ring-2",  "ring-indigo-500")
    this.sizeTargets[1].classList.remove("ring-2",  "ring-indigo-500")
    this.sizeTargets[2].classList.add("ring-2",  "ring-indigo-500")
    this.priceTarget.textContent = "0.017 BTC"
    this.selectedSize = "large"
    this.logalStorage.setitem("size", "large")
}

  handleNameChange() {
    this.localStorage.setItem('firstName', this.firstNameTarget)
    this.localStorage.setItem('lastName', this.lastName)
  }
}
