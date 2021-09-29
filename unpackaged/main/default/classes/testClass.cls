@isTest
public class testClass {

    static testMethod void accTriggerTest(){
		List<Account> accList = New List<Account>();
        List<Opportunity> oppList = New List<Opportunity>();
    	Account acc = New Account(Name = 'Trigger Acct');
        Account acc2 = New Account(Name = 'Trigger Acct2');
        accList.add(acc);
        accList.add(acc2);
        System.debug(acc.Name);
        System.debug(acc2.Name);
        System.debug(accList);
        insert accList;
        Opportunity opp = New Opportunity(Name = acc.Name + ' -- ' + 'Opp',
                                          StageName = 'Prospecting',
                                          CloseDate = Date.Today()+180,
                                          AccountId = acc.Id);
         Opportunity opp2 = New Opportunity(Name = 'Opp2',
                                          StageName = 'Prospecting',
                                          CloseDate = Date.Today()+180,
                                          AccountId = acc2.Id);
        System.debug(opp.Name);
        System.debug(opp2.Name);
        oppList.add(opp);
        oppList.add(opp2);
        
        insert oppList;
        
        acc.Name = 'Successful Trigger Account';
        acc2.Name = 'Successful Trigger Account 2';
        System.debug(acc.Name);
        System.debug(acc2.Name);
        update acc;
        update acc2;
        System.debug(opp.Name);
        System.debug(opp2.Name);
        
        

	}
    
    static testMethod void OppTriggerTest(){
		Account acc = New Account(Name = 'test1testy');
		insert acc;
		Opportunity op = New Opportunity(Name = 'Test Testy Op',
                                        CloseDate = Date.Today()+60,
                                        StageName = 'Prospecting',
                                        AccountId = acc.Id);
        test.startTest();
        insert op;
        //system.debug(op.Name);


        
        Op.Name = 'Testy Test Op';
        update Op;
        Op.Name = 'test1testy - Test Testy Op';
        update Op;
        Op.Name = 'test2testy -- TestTestyOp';
        update Op;
        Op.Name = 'test2testy - TestTestyOp';
        update Op;
        test.stopTest();
    }
    
}