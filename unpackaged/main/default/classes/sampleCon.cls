public class sampleCon {

    public String[] fromIds = new String[]{};

 	public PageReference test() {
 	 	return null;
 	}

 	public List<SelectOption> getFromItems() {
 	 	List<SelectOption> options = new List<SelectOption>();
 	 	List<User> fromUser = [SELECT User.name, User.id FROM USER WHERE User.isActive = true];
        for(User u : fromUser){
            options.add(new SelectOption(u.Id,u.name));
        }
 	 	return options;
  	}

 	public String[] getFromIds() {
  	 	return FromIds;
 	}

 	public void setIds(String[] fromIds) {
 	 	this.fromIds = fromIds;
 	}

}