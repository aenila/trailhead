@isTest
public class dailyLeadProcessorTest {
    public static string chron_exp = '0 0 0 15 3 ? 2018';
    
	@testSetup
    static void testSetup(){
        List<Lead> newLeads = New List<Lead>();
        for(integer i=0;i<200;i++){
            Lead L = New Lead(company='Company '+i,
                              lastName='Last '+i);
            newLeads.add(L);
        }
        insert newLeads;
    }
    
    static testMethod void testLeadProcess(){
        test.startTest();
        
         string jobId = System.schedule('Update blank leadSources', chron_exp, new dailyLeadProcessor());
        
        test.stopTest();
        system.assertEquals(200, [SELECT count() FROM lead WHERE leadSource='DreamForce']);
    }
}