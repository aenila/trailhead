import { LightningElement, wire } from 'lwc';
import getContacts from '@salesforce/apex/ContactController.getContacts';
import { reduceErrors } from './ldsUtils';
import FNAME from '@salesforce/schema/Contact.FirstName';
import LNAME from '@salesforce/schema/Contact.LastName';
import EML from '@salesforce/schema/Contact.Email';


const columns = [
    { label: 'First Name', fieldName: 'FirstName' },
    { label: 'Last Name', fieldName: 'LastName'},
    { label: 'Email', fieldName: 'Email', type: 'email' },
];

export default class ContactList extends LightningElement {
    
    columns = columns;
    errors;
    @wire(getContacts)
    data;

    get errors(){
        return (this.data.error) ? 
            reduceErrors(this.data.error) : [];
    }
}