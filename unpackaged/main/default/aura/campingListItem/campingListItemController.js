({
    packItem: function(component, event, helper) {
        var a = component.get("v.item",true).Packed__c = true;
        component.set("v.item",a);
        event.getSource().set("v.disabled",true);
    }
})