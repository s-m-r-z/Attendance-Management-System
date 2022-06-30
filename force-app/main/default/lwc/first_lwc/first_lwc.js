import { LightningElement,track } from 'lwc';

import createLeave from '@salesforce/apex/'


export default class First_lwc extends LightningElement {

    @track 
    greeting = 'World';
    changeHandler(event) {
        this.greeting = event.target.value;
    }


}