public class ContactsListController {
    private string sortOrder = 'LastName';
    
    public List<Contact> getContacts() {
   		List<Contact> ListofContacts = Database.query(
        'SELECT Id, FirstName, LastName, title, Email ' +
        'FROM Contact ' +
        'ORDER BY ' + sortOrder + ' ASC ' +
        'LIMIT 10');
        return ListofContacts;
    }
   
    public void sortByLastName(){
        this.sortOrder = 'LastName';
    }
    
    public void sortByFirstName(){
        this.sortorder = 'FirstName';
    }
   

}