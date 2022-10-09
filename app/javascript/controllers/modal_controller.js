import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="modal"
export default class extends Controller {
  static targets = ["modal"]
  connect() {
  }

  close(){
    const modal = this.modalTarget
    modal.style.display = "none"
  }

}
