import { LightningElement, wire } from 'lwc';
import getContacts from '@salesforce/apex/ContactController.getContacts';
import FNAME from '@salesforce/schema/Contact.FirstName';
import LNAME from '@salesforce/schema/Contact.LastName';
import EML from '@salesforce/schema/Contact.Email';


const columns = [
    { label: 'First Name', fieldName: 'FirstName' },
    { label: 'Last Name', fieldName: 'LastName'},
    { label: 'Email', fieldName: 'Email', type: 'email' },
];

export default class ContactList extends LightningElement {
    data = [];
    columns = columns;

    @wire(getContacts)
    wiredContacts({ error, res}){
        if(res){
            this.data = res;
        }else if(error){
            console.log(JSON.stringify(error));
        }
    }

    
}