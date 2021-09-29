({
	doInit : function(component, event, helper) {
        var types = [{class: "optionClass", label: "5k", value: "5k"},
                     {class: "optionClass", label: "10k", value: "10k"},
                     {class: "optionClass", label: "Half-Marathon", value: "Half-Marathon"},
                     {class: "optionClass", label: "Full-Marathon", value: "Full-Marathon"},
                     {class: "optionClass", label: "Ultra-Marathon", value: "Ultra-Marathon"}];
        
		component.find("Type").set("v.options", types);    	
	}
})