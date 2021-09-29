@isTest
public class accountManagerTest {
    
     static testMethod void getAccount(){
        Id accId = createTestAccount();
        system.debug(accId);
        restRequest request = new restRequest();
        
        request.requestURI = 'https://aenila-dev-ed.my.salesforce.com/services/apexrest/Accounts/'+ accId +'/contacts';
        request.httpMethod = 'Get';
        restContext.request = request;
        
        Account thisAccount = accountManager.getAccount();
        system.assert(thisAccount != null);
        
    }
    
    static Id createTestAccount(){
        Account acc = new Account(name='Rest Account',
                                  active__c='Yes',
                                  SLA__c='Gold',
                                  SLAExpirationDate__c=Date.today()+30,
                                  SLASerialNumber__c='15394737');
        insert acc;
        Contact con = new Contact(lastName = 'REST Contact',
                                  AccountId = acc.Id);
        Contact conTwo = new Contact(lastName = 'REST Contact Two',
                                     AccountId = acc.Id);
        insert con;
        insert conTwo;
        return acc.Id;
    }
}