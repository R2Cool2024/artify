import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["text", "textName", "counter", "counterName"];

  connect() {
    // TODO: console.log something!
    console.log("connect ok");
    this.counterTarget.innerText = `0 character`;
    this.counterNameTarget.innerText = `0 character`;
  }

  updateCounter() {
    console.log("updateCounter");
    console.log(this.textTarget.value);
    console.log(this.counterTarget.value);
    if ((this.textTarget.value.length > 1) && (this.textTarget.value.length <= 1000)) {
      this.counterTarget.innerText = `${this.textTarget.value.length} characters.`;
    } else if (this.textTarget.value.length > 1000) {
      this.counterTarget.innerText = `Number of characters exceeded by ${this.textTarget.value.length - 1000} characters`;
    } else {
      this.counterTarget.innerText = `${this.textTarget.value.length} character`;
    }
  }

  updateCounterName() {
    console.log("updateCounterName");
    console.log(this.textNameTarget.value);
    console.log(this.counterNameTarget.value);
    if ((this.textNameTarget.value.length > 1) && (this.textNameTarget.value.length <= 30)) {
      this.counterNameTarget.innerText = `${this.textNameTarget.value.length} characters.`;
    } else if (this.textNameTarget.value.length > 30) {
      this.counterNameTarget.innerText = `Number of characters exceeded by ${this.textNameTarget.value.length - 30} characters`;
    } else {
      this.counterNameTarget.innerText = `${this.textNameTarget.value.length} character`;
    }
  }
}
