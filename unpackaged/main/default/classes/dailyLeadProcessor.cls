public class dailyLeadProcessor implements Schedulable {
    
    public void execute(SchedulableContext sc){
        List<Lead> leadToUpdate = New List<Lead>();
        List<Lead> leadList = [SELECT leadSource FROM Lead WHERE leadsource = null];
        for(Lead L : leadList){
            l.leadSource = 'DreamForce';
            leadToUpdate.add(L);
        }
        if(leadToUpdate.size() >0){update leadToUpdate;}
    }

}