import {  Controller } from "stimulus"

export default class extends Controller {
  static targets = ["heading", "total", "transactions"]
  connect() {
  }
  greet() {
    this.headingTarget.innerHTML = "Hello World"
  }
  updateCart() {
    const quantity = document.getElementById("sel1").value
    const price = document.getElementById("price").value
    this.totalTarget.innerHTML = (quantity*price)
  }
  addTransaction() {
    const quantity = document.getElementById("sel1").value
    const price = document.getElementById("price").value
    this.transactionsTarget.insertAdjacentHTML('beforeEnd', '<div class="m-1">'+quantity+' x '+price+' = '+(quantity*price)+'</div>');
  }
}





