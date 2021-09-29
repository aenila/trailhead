@isTest
public class leadProcessorTest {

    @testSetup
    static void setup(){
        List<Lead> leads = New List<Lead>();
        for(integer i = 0; i<25;i++){
            leads.add(new Lead(lastName = 'Test ' + i,
                               company = 'Company '+ i));
        }
        insert leads;
    }
    
    static testMethod void test(){
        Test.startTest();
        leadProcessor lp = new leadProcessor();
        Id batchId = Database.executeBatch(lp);
        Test.stopTest();
    }
}