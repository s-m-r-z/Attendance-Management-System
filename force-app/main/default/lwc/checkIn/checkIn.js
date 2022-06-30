import { LightningElement,track } from 'lwc';
import getApexData from '@salesforce/apex/AttendanceController.insertCheckIn';

import {ShowToastEvent} from 'lightning/platformShowToastEvent';


export default class CheckIn extends LightningElement {

    @track employeeID;
    @track Department;
    @track checkIn;

    get options() {
        return [
            { label: 'Development', value: 'Development' },
            { label: 'QA', value: 'QA' },
            { label: 'Administration', value: 'Administration' },
        ];
    }

    handleChange(event) {
        this.Department = event.detail.value;
    }

    employeeIDChange(event){
        this.employeeID = event.target.value;
    }

    checkOutChange(event){
        this.checkIn = event.target.value;
    }

    saveAccountAction() {
        getApexData({employeeID:this.employeeID ,Department:this.Department})
            .then((result) => {
                console.log(result);
                this.dispatchEvent(
                    new ShowToastEvent({
                        title: 'Success',
                        message: 'You Have Been Checked-In Successfully',
                        variant: 'success'
                    })
                );
            })
            .catch((error) => {
                console.log(error);
                this.dispatchEvent(
                    new ShowToastEvent({
                        title: 'Error',
                        message: 'You Have Not Been Checked-In Successfully',
                        variant: 'failure'
                    })
                );
            });
   

}
}