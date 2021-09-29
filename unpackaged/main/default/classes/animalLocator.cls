global class animalLocator {
	
    
    global static String getAnimalNamebyId(Integer animalId){
        String animalName;
        Http http = New Http();
        HttpRequest request = New HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/'+animalId);
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        
        if(response.getStatusCode()==200){
            Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
            Map<String, Object> animal =(Map<String, Object>) results.get('animal');
            animalName = (String)animal.get('name');
            
        }
        return animalName;
    }
}