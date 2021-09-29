@isTest(seeAllData = true)
public class accountProcessorTest {

    static testMethod void testFutureCall(){
        List<Account> accList = [SELECT Id FROM Account WHERE ownerId = '005360000019Du5'];
        List<Id> idList = New List<Id>();
        for(Account acc : accList){
            idList.add(acc.Id);
        }
        //accountProcessor processor = New accountProcessor();
        Test.startTest();
        accountProcessor.countContacts(idList);
        Test.stopTest();
    }
}