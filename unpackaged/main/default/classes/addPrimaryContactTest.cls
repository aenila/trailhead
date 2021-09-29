@isTest
public class addPrimaryContactTest {

    
    @testSetup
    static void setup(){
        List<Account> newAccs = New List<Account>();
        
        for(integer i=0; i<50;i++){
            newAccs.add(New Account(name='Testing blah '+i,
                                    billingState='CA'));
        }
        
        for(integer j=0;j<50;j++){
            newAccs.add(New Account(name='Testing'+(j+2),
                                    billingState='NY'));
        }
        insert newAccs;
        
    }
    
    public static testMethod void addContact(){
        Contact primary = New Contact(lastName='Primary');
        String state='CA';
        addPrimaryContact addPrimary = New addPrimaryContact(primary, state);
        test.startTest();
            system.enqueueJob(addPrimary);
        	
        test.stopTest();
        system.assertEquals(50, [SELECT count() from Contact WHERE lastName='Primary']);
        
    }
    
}