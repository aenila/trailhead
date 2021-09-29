@istest
public class RCRAInviteTriggerTestClass {

       
		     
    
    
    @istest 
    static void FireTrigger()
    {
      List<Contact> TestCon = [SELECT FirstName, LastName, ID, RCRA_Seminar_Invite__c FROM Contact WHERE FirstName = 'John' AND LastName = 'Odoyle'];
        System.debug(TestCon);
        system.debug('Did this commit');
        test.startTest();
        system.debug('Test started');
        	for(integer i = 0; i < TestCon.size(); i++)
            {
                TestCon[i].RCRA_Seminar_Invite__c = 'Indy RCRA';
                System.debug(TestCon[i].FirstName);
                System.debug(TestCon[i].LastName);
                System.debug(TestCon[i].RCRA_Seminar_Invite__c);
                
                update TestCon[i];
            }
        	
        test.stopTest();
        System.debug('Test ended');
    }
}