import { Controller } from "@hotwired/stimulus"
import {isWeb3, connectWeb3} from "../connect-wallet"
import {Web3} from "web3"

export default class extends Controller {
  connect() {
    this.account = localStorage.getItem('account') || null
    if (this.account) {
      this.element.textContent = "Connected"
    } else {
        this.element.textContent = "Connect Wallet"
    }
  }

  async initialize() {
    this.element.textContent = "Connecting..."
    console.log("Clicked")
    const account = await connectWeb3()
    console.log(account)

    if (isWeb3) {
        this.element.textContent = "Connected"
    }
  }

  async handleClick() {
    this.element.textContent = "Connecting..."
    console.log("Clicked")
    const account = await connectWeb3()
    console.log(account)
    localStorage.setItem('account', account);
    if (isWeb3) {
        this.element.textContent = "Connected"
    }
  }
}
