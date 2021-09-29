public class NewCaseListController {
    
    public List<case>  getNewCases(){
        List<case> results = Database.query(
            'SELECT Id, CreatedDate, CaseNumber, Subject, Status ' +
            'FROM Case ' +
            'WHERE CreatedDate = TODAY');
        return results;
            
    }
}