@IsTest
private class GreeterTest {
    @IsTest static void greets() {
        insert new Repro__c(Name = 'x', Stage__c = 'a');
        System.assertEquals('delta', Greeter.greet());
    }
}
