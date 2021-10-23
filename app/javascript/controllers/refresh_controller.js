import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["ipsum"]

  async newIpsum() {
    try {
      const res = await fetch("/api/generate")

      if (!res.ok) {
        return;
      }

      const body = await res.json()

      this.ipsumTarget.innerText = body.ipsum
    } catch (error) {
      console.error(error)
    }
  }
}
