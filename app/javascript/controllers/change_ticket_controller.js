import { Controller } from "@hotwired/stimulus"
export default class extends Controller {
    static targets = ["passengerFormTemplate", "list", "ticketNumber"]
    connect() {
        // alert('hi')
    }
    add () {
        console.log('hi')
        let passengerForm = this.passengerFormTemplateTarget.content.cloneNode(true)
        this.listTarget.appendChild(passengerForm)
        this.ticketNumberTarget.value ++
    }
}