import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["currentIpsum"]

  async refresh() {
    try {
      const res = await fetch("/api/generate")

      if (!res.ok) {
        return;
      }

      const body = await res.json()

      this.currentIpsumTarget.innerText = body.ipsum
    } catch (error) {
      console.error(error)
    }
  }

  async copy() {
    await navigator.clipboard.writeText(this.currentIpsumTarget.textContent)
  }
}
