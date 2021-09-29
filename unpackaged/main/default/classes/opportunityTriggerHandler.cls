public with sharing class opportunityTriggerHandler {

    /*public void OppNameChange(List<Opportunity> triggerNew, List<Opportunity> triggerOld, Map<Id, Opportunity> triggerNewMap, Map<Id,Opportunity> triggerOldMap, boolean isBefore, boolean isAfter, boolean isInsert, boolean isUpdate){
        
        Set<Id> AccountIds = New Set<Id>(); //Initialize a list of Ids
    	String sName; //Initialize a string variable to manipulate our Opp names
    	String accName;//Initialize a string variable to hold account name value when opp is updated instead of inserted

    
    	//Add an account ID to the list for every opportunity caught by trigger
    	for (Opportunity op : TriggerNew) {
  
      		accountIds.add(op.AccountId);
    	}
    
		//Create a map of Ids and account, querying the name from account records
		//whose Id is in the AccountIds list generated earlier
		Map<Id, Account> accountMap = new Map<Id, Account>([SELECT Name FROM Account WHERE Id IN :accountIds]);
    	System.debug(accountMap);

		//Loop through all opps setting the new name in a variable and then assigning that
		//variables contents to the name field for each opportunity
		for (Opportunity op : TriggerNew) {
    		system.debug(op);
    		//Assigns account name of current op to a variable
    
    		accName = accountMap.get(op.AccountId).Name;
    		//system.debug(accName);
    		if(isInsert){//Designates actions to be taken if trigger is run on insert
        		// add the account name and amount to current opp name
        		sName = accountMap.get(op.AccountId).Name + ' -- ' + op.Name;
        		system.debug(sName);
        		// set the name :-)
        		op.Name = sName;
        		//system.debug(op);
    		}else if(isUpdate){//Designates actions to be taken if trigger is run on update
        		if(triggerOldMap.get(op.Id).Name != triggerNewMap.get(op.Id).Name){//checks to see if opp name has changed and designates actions to be taken if so
            		if(!op.name.contains(accountMap.get(op.AccountId).Name)){//Checks to see if name still contains the related account name and designates actions to be taken if not
                		if(!op.name.contains(' -- ')){
                		sName = accName + ' -- ' + op.Name;
                		system.debug(op);
                		op.Name = sName;
            		} else{
                		string[] splitSname = op.name.split(' -- ');
                		sName = accName + ' -- ' + splitsName[1];
                		op.Name = sName;
              		}
        		} else{//actions to be taken if account name is still part of opp name - essentially does nothing but makes code cover all bases
           			sName = op.Name;
           			op.Name = sName;
        		}
    }
    }
}

}*/
}