import { Controller } from "@hotwired/stimulus"
export default class extends Controller {
    static targets = ["passengerFormTemplate", "list", "ticketNumber", "warning"]
    
    add () {
        
        let passengerForm = this.passengerFormTemplateTarget.content.cloneNode(true)
        this.listTarget.appendChild(passengerForm)
        this.ticketNumberTarget.value ++
    }
    remove(event) {
        if (this.listTarget.childElementCount > 1) {
            
            let list_item = event.target.parentElement
            this.listTarget.removeChild(list_item)
            this.ticketNumberTarget.value --
            console.log("number of child", this.listTarget.childElementCount)
        } else {
            console.log("hi")
            this.warningTarget.textContent = "You need to have at least one passenger!"
        }
    }
}