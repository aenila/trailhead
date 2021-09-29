@RestResource(URLMapping='/Accounts/*/contacts')
global with sharing class accountManager {
    
    @httpGet 
    global static Account getAccount(){
        restRequest request = restContext.request;
        
        String accId = request.requestURI.substringBetween('/Accounts/','/contacts');
        system.debug(accId);
        Account result = [SELECT name, Id,(SELECT name, Id from Contacts) FROM Account WHERE Id = :accId];
        system.debug(result);
        return result;
        
    }

}