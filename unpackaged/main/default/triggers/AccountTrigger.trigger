trigger AccountTrigger on Account (after update) {
	 accountTriggerHandler handler = New accountTriggerHandler();
    
    if(trigger.isUpdate && trigger.isAfter){
        
        handler.accNameChange(Trigger.New);
        
    }
}