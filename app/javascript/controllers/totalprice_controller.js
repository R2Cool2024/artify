import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["totalprice", "startdate", "enddate"];
  static values = {
    priceperday: Number
  }

  connect() {
    // TODO: console.log something!
    console.log("connect ok");
    // console.log(this.priceperdayValue);
    this.totalpriceTarget.innerText = `0 €`;
  }

  updateTotalPrice() {
    console.log("updateTotalPrice");
    // console.log(`totalprice: ${this.totalpriceTarget.value}`);
    // console.log(`startdate: ${this.startdateTarget.value}`);
    // console.log(`enddate: ${this.enddateTarget.value}`);
    if (this.startdateTarget.value && this.enddateTarget.value && (this.enddateTarget.value > this.startdateTarget.value)) {
      // console.log("if")
      const oneDay = 24 * 60 * 60 * 1000; // hours*minutes*seconds*milliseconds
      const startDay = new Date(this.startdateTarget.value);
      // console.log(`startDatecalcul: ${startDay}`);
      const endDay = new Date(this.enddateTarget.value);
      // console.log(`endDatecalcul: ${endDay}`);
      const diffDays = Math.round(Math.abs((endDay - startDay) / oneDay));
      // console.log(`diffDays: ${diffDays}`);
      // price = price*nb_days + insurance + delivery
      const price = (diffDays * this.priceperdayValue) + (0.66 * this.priceperdayValue) + (0.1 * this.priceperdayValue);
      // console.log(`price: ${price}`);
      this.totalpriceTarget.innerText = `${Math.round(price)} €`;
    } else if (this.startdateTarget.value && this.enddateTarget.value  && (this.enddateTarget.value < this.startdateTarget.value)) {
      // console.log("else if")
      this.totalpriceTarget.innerText = `The end date must be after the start date`;
    } else {
      this.totalpriceTarget.innerText = `0 €`;
    }
  }
}
