import { LightningElement, track } from 'lwc';
import getApexData from '@salesforce/apex/LeaveController.createLeave';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';

export default class LeaveRecord extends LightningElement {

    @track to;
    @track from;
    @track reason;
    @track error;

    toChange(event){
        this.to=event.target.value;
    }

    fromChange(event){
        this.from=event.target.value;
    }


    reasonChange(event){
        this.reason = event.target.value;
    }

    // saveAccountAction(){
    //     getApexData(this.to,this.from,this.reason);


        


    // }

    saveAccountAction() {
        getApexData({ to: this.to, frm:this.from,Reason:this.reason })
            .then((result) => {
                console.log(result);
                this.dispatchEvent(
                    new ShowToastEvent({
                        title: 'Success',
                        message: 'Leaves Requested Successfully',
                        variant: 'success'
                    })
                );
            })
            .catch((error) => {
                console.log(error);
            });
    }


}

// handleSearch() {
//     findContacts({ searchKey: this.searchKey })
//         .then((result) => {
//             this.contacts = result;
//             this.error = undefined;
//         })
//         .catch((error) => {
//             this.error = error;
//             this.contacts = undefined;
//         });


// }

// this.dispatchEvent(
//     new ShowToastEvent({
//         title: 'Success',
//         message: 'Contact updated',
//         variant: 'success'
//     })
// );