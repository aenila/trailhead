trigger OpportunityTrigger on Opportunity (before insert, before update) {
    
    opportunityTriggerHandler handler = New opportunityTriggerHandler();
    
    if((Trigger.isInsert || Trigger.isUpdate) && Trigger.isBefore){

        //handler.oppNameChange(Trigger.New, Trigger.Old, Trigger.newMap, Trigger.oldMap, trigger.isBefore, trigger.isAfter, trigger.isInsert, trigger.isUpdate);
    
    }
}