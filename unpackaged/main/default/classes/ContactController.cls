/**
 * @description       : 
 * @author            : Adam Nila
 * @group             : 
 * @last modified on  : 09-30-2021
 * @last modified by  : Adam Nila
**/
public with sharing class ContactController {
    @AuraEnabled(cacheable=true)
    public static List<Contact> getContacts() {
        return [
            SELECT Id, FirstName, LastName, Email
            FROM Contact
            WITH SECURITY_ENFORCED
       ];
    }
}
