import { LightningElement } from 'lwc';
import { createRecord } from 'lightning/uiRecordApi';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import CON_OBJ from '@salesforce/schema/Contact';
import FNAME from '@salesforce/schema/Contact.FirstName';
import LNAME from '@salesforce/schema/Contact.LastName';
import EML from '@salesforce/schema/Contact.Email';


export default class ContactCreator extends LightningElement {
    objectApiName = CON_OBJ;
    fields = [FNAME, LNAME, EML];
    handleSuccess(event){
        const toastEvent = new ShowToastEvent({
            title: 'Contact Created',
            message: 'Record ID: '+event.detail.id,
            variant: 'success'
        });

        this.dispatchEvent(toastEvent);
    }
}