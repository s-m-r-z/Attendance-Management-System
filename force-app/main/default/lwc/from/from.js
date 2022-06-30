import { LightningElement,track } from 'lwc';

export default class From extends LightningElement {
    @track 
    date;
    changeHandler(event) {
        this.date = event.target.value;
    }

}