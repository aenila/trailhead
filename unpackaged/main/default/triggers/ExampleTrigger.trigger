trigger ExampleTrigger on Contact (after insert, after delete) {
    if(Trigger.isinsert){
        Integer recordCount = Trigger.New.size();
        //Call EmailManager method from EmailManager Class
        EmailManager.sendMail('adam.nila@heritage-enviro.com', 'Trailhead trigger tutorial', + recordCount + ' contact(s) were inserted.');
        System.debug('Triggered by insert');
        }
    else if (Trigger.isDelete){
        //Process after delete
        //Intentionally left blank at this time
    }
}