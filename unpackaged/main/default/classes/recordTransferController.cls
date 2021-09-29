public class recordTransferController {
    	public string recordFrom {get; set;}
        public string recordTo{get; set;}

    
    public ApexPages.PageReference transferRecords(){
        List<lead> leadsToTransfer = New List<lead>();
        List<lead> leadsToUpdate = New List<lead>();
        user userToReceive = [SELECT Id FROM user WHERE user.name = :recordTo];
        leadsToTransfer = [SELECT company FROM Lead WHERE ownerId IN :[SELECT Id FROM user WHERE user.name = :recordFrom]];
        for(Lead L : leadsToTransfer){
            l.OwnerId = userToReceive.Id;
            leadsToUpdate.add(L);
        }
        update leadsToUpdate;
        return null;
    }
    
}