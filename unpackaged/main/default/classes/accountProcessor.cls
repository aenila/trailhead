public class accountProcessor {
		
    @future
    public static void countContacts(List<Id> accIds){
        integer numberOfContacts;
        List<Id> checkIds = accIds;
        List<Account> accList = [SELECT Id, name FROM Account WHERE Id IN :checkIds];
        List<Contact> conList = [SELECT Id, name, AccountId FROM Contact WHERE AccountId IN :checkIds];
        List<Account> accsToUpdate = New List<Account>();
        for(Account acc : accList){
            numberOfContacts = 0;
            for(Contact con : conList){
                if(acc.Id == con.accountId){numberOfContacts++;}
            }
            acc.number_of_contacts__c = numberofContacts;
            
            accsToUpdate.add(acc);
            
        }
        update accsToUpdate;
    }
}