trigger caseTrigger on Case (before insert, before update) {
	caseTriggerHandler handler = New caseTriggerHandler();
    if((trigger.isInsert || trigger.isUpdate) && trigger.isBefore){
        
        handler.warrantySummary(trigger.New, trigger.NewMap);
    }
}