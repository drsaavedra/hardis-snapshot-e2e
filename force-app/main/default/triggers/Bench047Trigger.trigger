trigger Bench047Trigger on Bench047__c (before insert, before update) {
    BenchService0047.handle(Trigger.new);
}
