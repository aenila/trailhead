({
	handleClick : function(component, event, helper) {
		//Get the array index
		//Dispatch an Event to delete the proper task
		const arrayIndex = component.get('v.arrayIndex');
        const deleteEvent = $A.get("e.c:ToDoDeleteTask");
        deleteEvent.setParam("arrayIndex",arrayIndex);
        deleteEvent.fire();
	}
})