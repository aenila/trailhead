public with sharing class accountTriggerHandler {

    public void accNameChange(List<Account> triggerNew){
        System.debug(triggerNew);
            Set<Id> accIds = New Set<Id>();
    	List<Opportunity> oppList = New List<Opportunity>();
    	String sName;
    	String oppName;
    	String accName;
    	String[] splitSName;
    
    	for(Account acc : TriggerNew){
        	accIds.add(acc.Id);
            system.debug(acc.Id);
   	 }
   
   
  	 for(Opportunity opp : [SELECT id, Name, AccountId, Account.Name FROM Opportunity WHERE AccountId IN :accIds]){
         system.debug(opp);
     	  accName = opp.Account.Name;
         system.debug(accName);
     	  if(!opp.Name.contains(' -- ')){
      	 		sName = accName + ' -- ' + opp.Name;
      	 		opp.Name = sName;
      	     	oppList.add(opp);
      	  }else{
       	 	    splitSName = opp.name.split(' -- ');
        	    sName = accName + ' -- ' + splitSName[1];
        	    opp.name = sName;
          		oppList.add(opp);
              
       		}
        
    	}
        system.debug(oppList);
		update oppList;
        
    }
    
}