import { LightningElement } from 'lwc';

const columns = [
    { label: 'First Name', fieldName: 'FirstName' },
    { label: 'Last Name', fieldName: 'LastName'},
    { label: 'Email', fieldName: 'Email', type: 'email' },
];

export default class ContactList extends LightningElement {
    data = [];
    columns = columns;

    @wire
    getContacts({ error, res}){
        if(res){
            this.data = res;
        }else if(error){
            console.log(JSON.stringify(error));
        }
    }

    
}