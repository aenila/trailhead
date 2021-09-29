@isTest
public class warrantySummaryTest {
	@isTest
    static void warrantySummary(){
        Case newCase = New Case();
        newCase.Product_Purchase_Date__c = Date.today();
        newCase.Product_Total_Warranty_Days__c = 30;
        newCase.Extended_Warranty__c = True;
        insert newCase;
        }
}