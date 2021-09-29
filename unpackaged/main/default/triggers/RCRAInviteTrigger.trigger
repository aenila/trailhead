trigger RCRAInviteTrigger on Contact (before update) {
    
    List<Campaign> ActiveCampId = [Select Id FROM Campaign WHERE IsActive = true];
    List<CampaignMember> CampMember = [SELECT FirstName, LastName FROM CampaignMember];
    			System.debug(ActiveCampId);
    			System.debug(CampMember);
    
    For(Contact con : Trigger.New)
    {
      If(Trigger.newMap.get(con.RCRA_Seminar_Invite__c) != null)
      {
          For(CampaignMember campmem : CampMember)
          {
              If(campMem.firstname == con.FirstName)
              {
                  System.debug(campMem.FirstName);
                  System.debug(con.id);
              }
          }
      }

    }
  
    
    
    
        

}