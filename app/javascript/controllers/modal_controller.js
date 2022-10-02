import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="modal"
export default class extends Controller {
  static targets = ["link", "modal"]
  connect() {
  }

  close(e){
    e.preventDefault()
    const modal = this.modalTarget
    modal.style.display = "none"
  }

}
