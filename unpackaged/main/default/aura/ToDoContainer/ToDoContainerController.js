({
	handleDeleteTask : function(component, event, helper) {
		//get current list of tasks
		let tasks = component.get("v.tasks");
		//Get array index
		const arrayIndex = event.getParam('arrayIndex');
        //remove proper event
		tasks.splice(arrayIndex,1);
		//set the list of tasks
		component.set('v.tasks',tasks);
		
	},
    
    handleCreateTask : function(component, event, helper){
        //Get list of tasks
        let tasks = component.get("v.tasks");
        //get new task
        const newTask = event.getParam('taskName');
        //add the new task to our list
        tasks.push(newTask);
        component.set('v.tasks',tasks);
    }
})