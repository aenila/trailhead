public class addPrimaryContact implements Queueable {
	private Contact primaryCon;
    private String state;
    
    public addPrimaryContact(Contact con, String state){
        this.primaryCon = con;
        this.state = state;
        
    }
    
    public void execute(QueueableContext qc){
        
        List<Contact> consToAdd = New List<Contact>();
        
        
        if(test.isRunningTest() || !test.isRunningTest()){
        for(Account acc : [SELECT Id, billingState FROM Account WHERE billingState = :state LIMIT 200]){
                          
            	Contact cont = primaryCon.clone(false,false,false,false);
            	cont.AccountId = acc.Id;
            	
            	consToAdd.add(cont);
            
        }
        
            if(consToAdd.size()>0){
                insert consToAdd;}
        }
        
    }
    
}