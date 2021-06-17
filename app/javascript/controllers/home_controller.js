import {  Controller } from "stimulus"

export default class extends Controller {
  static targets = ["heading", "total", "transactions"]
  connect() {
  }

  calculatePrice() {
    const quantity = document.getElementById("price-drop-down").value
    const price = document.getElementById("price").value
    this.totalTarget.innerHTML = (quantity * price)
  }
  updateCart() {
    const quantity = document.getElementById("price-drop-down").value
    const price = document.getElementById("price").value
    this.transactionsTarget.insertAdjacentHTML('beforeEnd', '<div class="m-1">'+quantity+' x '+price+' = '+(quantity*price)+'</div>');
  }
}





