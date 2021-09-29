public class QuickLogController {
    
    public List<Event> TodaysEvents{get;set;}
    public List<String> CallLogText{get;set;} 
    public Integer meetNum{get;set;}
    
    
    public QuickLogController(){
        dateTime ninetyMinutesAgo = system.now() - (1/16);
        TodaysEvents = new list<event>([SELECT Ownerid, Who.name, Subject, StartDateTime, Owner.name FROM event WHERE StartDateTime = Today AND Ownerid = :UserInfo.getUserId() ORDER BY StartDateTime LIMIT 1]);
        		System.debug(TodaysEvents.size());
       List<String> CallLogText = New List<String>();
        for(Integer i=0; i <TodaysEvents.size(); i++){
            CallLogText.add('');
        }
				System.debug(CallLogText.size());
               
        
        
    }
    
  public ApexPages.PageReference LogCall(){
        
        System.debug('Your method fired atleast. Thats something, right?');
      
      		
        //Creates a task list and
        List<task> meetTasks = New List<task>();
        
        //iterates over the list, checking to see if call log text is blank
        //if not blank populates fields for new task with list data
        //and tracks number of blank text inputs
        //if all text inputs are blank, provide error message
        //if at least one text input is filled in, insert created tasks
        for(integer i = 0; i < TodaysEvents.size(); i++){
           
            If(CallLogText[i] != null){ 
                meetTasks.add(new task(
            	ownerid = TodaysEvents[i].ownerid,
          	  	description = CallLogText[i],
            	whoId = TodaysEvents[i].id,                    
           	 	status = 'Completed',
           	 	subject = 'Meeting with ' + TodaysEvents[i].who.name));
                
            }
   
       }
      			//System.debug(meetTasks[0].whoid);
      			//System.debug(meettasks[0].subject);
      			//System.debug(meetTasks[0].description);
            
    if (meetTasks.size() == 0) {
        ApexPages.addmessage(new ApexPages.message(
                ApexPages.severity.Warning,
                'You have not entered any notes to log'
                ));
    
	}
      else{
          insert meetTasks;
      }
    	
      return null;
    }
}