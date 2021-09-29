public class QuickLogController2 {
    
    public List<event> TodaysEvents{get;set;}
    public list<String> CallLogText{get;set;} 
    public integer meetNum{get;set;}
    
    public  QuickLogController2(){
        TodaysEvents = new list<event>([SELECT Ownerid, Who.name, Subject, StartDateTime, Owner.name FROM event WHERE StartDateTime = Today AND Ownerid = :UserInfo.getUserId() ORDER BY StartDateTime]);
        List<String> CallLogText = New List<String>();
        for(Integer i=0; i <TodaysEvents.size(); i++){
            CallLogText.add('');
        }
        
        
        
    }
    
  public PageReference LogCalls(){
        
        System.debug('Your method fired atleast. Thats something, right?');
    	
        //Creates a task list and
        List<task> meetTasks = New List<task>();
        
        //iterates over the list, checking to see if call log text is blank
        //if not blank populates fields for new task with list data
        //and tracks number of blank text inputs
        //if all text inputs are blank, provide error message
        //if at least one text input is filled in, insert created tasks
        for(integer i = 0; i < TodaysEvents.size()-1; i++){
           
            If(CallLogText[i] != null){ 
                meettasks.add(new task(
            	ownerid = TodaysEvents[i].ownerid,
          	  	description = CallLogText[i],
            	//meetTasks[i].who = EventsToLog[i].who;
           	 	status = 'Completed',
           	 	subject = 'Meeting with ' + TodaysEvents[i].who.name));
                
            }
   
       }
            insert meetTasks;
    if (meetTasks.size() == 0) {
        ApexPages.addmessage(new ApexPages.message(
                ApexPages.severity.Warning,
                'You have not entered any notes to log'
                ));
    
}
       // if(meetTasks.size()!=0){
            
      //       insert meetTasks;
     //   }
     //   else{
     //       ApexPages.addmessage(new ApexPages.message(ApexPages.severity.Warning, 'You have not entered any notes to log'));
            
     //   }
      return null;
    }
}