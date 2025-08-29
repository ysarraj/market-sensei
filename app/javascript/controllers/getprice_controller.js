import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="getprice"
export default class extends Controller {
  static targets = ["srcToken", "srcAmount", "destToken", "destAmount"]
  connect() {
    console.log("getprice controller connected");
  }

  getprice(){
    if (!this.srcTokenTarget.value && !this.destTokenTarget.value) return
    const srcToken = this.srcTokenTarget.value.split(",")[0]
    const destToken = this.destTokenTarget.value.split(",")[0]
    const url = `https://api.paraswap.io/prices/?srcToken=${srcToken}&destToken=${destToken}&amount=${this.srcAmountTarget.value*1000}&srcDecimals=3&destDecimals=3&side=SELL&network=1&version=5`
    fetch(url).then(response=>response.json()).then(data=>{
      const destAmount = Number(data.priceRoute.destAmount) /1000
      this.destAmountTarget.innerText = `${destAmount} ${this.destTokenTarget.value.split(",")[1]}`
    })
  }
}
