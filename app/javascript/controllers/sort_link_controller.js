import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="sort-link"
export default class extends Controller {
  static targets = ["sort", "direction"];

  updateForm(e) {
    console.log("here");
    let searchParams = new URL(e.detail.url).searchParams;

    this.sortTarget.value = searchParams.get("sort");
    this.directionTarget.value = searchParams.get("direction");
  }
}
