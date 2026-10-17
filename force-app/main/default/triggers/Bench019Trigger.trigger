trigger Bench019Trigger on Bench019__c (before insert, before update) {
    BenchService0019.handle(Trigger.new);
}
