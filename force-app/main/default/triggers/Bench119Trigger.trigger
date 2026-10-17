trigger Bench119Trigger on Bench119__c (before insert, before update) {
    BenchService0119.handle(Trigger.new);
}
