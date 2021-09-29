({
	handleCreateTask : function(component, event, helper) {
		//Get input value
		const input = document.getElementById('task-input').value;
		//Add value to the list
        const createTaskEvent = $A.get("e.c:ToDoCreateTask");
        createTaskEvent.setParam("taskName",input);
        createTaskEvent.fire();
        
	}
})