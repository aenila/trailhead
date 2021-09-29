public class ButtonTest {
        public List<string> TestValue{get; set;}
    
 
    public void ButtonTest()
    {
        List<string> TestValue = New List<string>();
        TestValue.add ('');
        TestValue.add ('');
    }
    
    public PageReference ButtonWorks()
    {
        System.debug('This button fires the method');
        System.debug(TestValue[0]);
        System.debug(TestValue[1]);
        
        return null;
    }
    
}