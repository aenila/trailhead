@isTest
global class animalLocatorMock implements HttpCalloutMock {
    global httpResponse respond(httpRequest request){
        httpResponse response= New httpResponse();
        
        response.setHeader('Content-Type', 'application/json');
        response.setBody('{"animal":{"id":1,"name":"chicken","eats":"chicken food","says":"cluck cluck"}}');
        String contentType = response.getheader('Content-Type');
        System.assert(contentType=='application/json');
        response.setStatusCode(200);
        return response;
        
        
    }
}