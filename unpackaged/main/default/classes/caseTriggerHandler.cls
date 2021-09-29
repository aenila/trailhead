public class caseTriggerHandler {
	
    public void warrantySummary(List<case> triggerNew, Map<Id, case> triggerNewMap){
        for(Case c : triggerNew){
        	String createdDate = DateTime.Now().format();
            c.Warranty_Summary__c = 'Product purchased on ' + c.Product_Purchase_Date__c + 'and case created on ' + createdDate + '.\n';
            c.Warranty_Summary__c += 'Warranty is for ' + c.Product_Total_Warranty_Days__c + ' days. \n';
            c.Warranty_Summary__c += 'Extended warranty: ' + c.Extended_Warranty__c + '\n';
            c.Warranty_Summary__c += 'Have a nice day!';
            
        }
    }
}