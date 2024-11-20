import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["text", "counter"];

  connect() {
    // TODO: console.log something!
    console.log("connect ok");
    this.counterTarget.innerText = `0 character`;
  }

  updateCounter() {
    console.log("updateCounter");
    console.log(this.textTarget.value);
    console.log(this.counterTarget.value);
    if ((this.textTarget.value.length > 1) && (this.textTarget.value.length <= 1000)) {
      this.counterTarget.innerText = `${this.textTarget.value.length} characters. Min.: 10 char.`;
    } else if (this.textTarget.value.length > 1000) {
      this.counterTarget.innerText = `Number of characters exceeded by ${this.textTarget.value.length - 1000} characters`;
    } else {
      this.counterTarget.innerText = `${this.textTarget.value.length} character`;
    }
  }
}
