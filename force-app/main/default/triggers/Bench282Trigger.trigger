trigger Bench282Trigger on Bench282__c (before insert, before update) {
    BenchService0282.handle(Trigger.new);
}
