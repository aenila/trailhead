@isTest
global class AnimalLocatorTest 
{
 static testMethod void testCallOut() 
{
    
    // Set mock callout class 
    Test.SetMock(HttpCallOutMock.class, new AnimalLocatorMock()); 
    // This causes a fake response to be sent
    // from the class that implements HttpCalloutMock. 
    string response = animalLocator.getAnimalNamebyId(1);
    // Verify that the response received contains fake values
       System.debug('response === '+response);
    
}

}