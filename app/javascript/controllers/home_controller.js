import {  Controller } from "stimulus"

export default class extends Controller {
  static targets = ["heading", "total", "transactions", "quantity"]
  static values = {price: Number}
  connect() {
  }

  calculatePrice() {
    const quantity = this.quantityTarget.value
    const price = this.priceValue
    this.totalTarget.innerHTML = (quantity * price)
  }
  updateCart() {
    const quantity = this.quantityTarget.value
    const price = this.priceValue
    this.transactionsTarget.insertAdjacentHTML('beforeEnd', '<div class="m-1">'+quantity+' x '+price+' = '+(quantity*price)+'</div>');
  }
}





