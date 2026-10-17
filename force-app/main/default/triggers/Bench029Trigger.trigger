trigger Bench029Trigger on Bench029__c (before insert, before update) {
    BenchService0029.handle(Trigger.new);
}
