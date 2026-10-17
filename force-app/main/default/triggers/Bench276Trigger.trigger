trigger Bench276Trigger on Bench276__c (before insert, before update) {
    BenchService0276.handle(Trigger.new);
}
