trigger Bench297Trigger on Bench297__c (before insert, before update) {
    BenchService0297.handle(Trigger.new);
}
