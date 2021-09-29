@RestResource(urlMapping='/Cases/*')
global with sharing class caseManager {
    
    @httpGet
    global static Case getCaseById(){
        restRequest request = restContext.request;
        //grab the caseId from the end of the URL
        String caseId = request.requestURI.substring(request.requestURI.lastIndexOf('/')+1);
        
        Case result = [SELECT CaseNumber,Subject,Status,Origin,Priority
                       FROM Case WHERE Id = :caseId];
        return result;
    }
    
    @httpPost
    global static ID createCase(String subject, String status,
                                String origin, String Priority){
		Case thisCase = new Case(Subject=subject,
                                 Status=status,
                                 Origin=origin,
                                 Priority=priority);
		insert thisCase;
		return thisCase.Id;                                    
                                    
    }
    
    @httpDelete
    global static void deleteCase(){
        restRequest request = RestContext.request;
        String caseId = request.requestURI.substring(request.requestURI.lastIndexOf('/')+1);
        
        Case thisCase = [SELECT Id FROM Case WHERE Id= :caseId];
        delete thisCase;
    }
    
    @httpPut
    global static ID upsertCase(String subject, String status,
                                String origin, String priority, String Id){
    		
		Case thisCase = new Case(Id=id,
                                Subject=Subject,
                                Status=status,
                                Origin=origin,
                                Priority=priority);
                                    
		upsert thisCase;
		return thisCase.Id;
	}
    
    @httpPatch
    global static ID updateCaseFields(){
        restRequest request = restContext.request;
        String caseId = request.requestURI.substring(request.requestURI.lastIndexOf('/')+1);
        
        case thisCase = [SELECT Id FROM Case WHERE Id= :caseId];
        //Deserialize the JSON string into name-value pairs
        Map<String, Object> params = (Map<String, Object>)JSON.deserializeUntyped(request.requestBody.toString());
        
        for(String fieldName : params.keySet()){
            thisCase.put(fieldName, params.get(fieldName));
        }
        update thisCase;
        return thisCase.Id;
    }

}