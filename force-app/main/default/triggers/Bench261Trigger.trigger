trigger Bench261Trigger on Bench261__c (before insert, before update) {
    BenchService0261.handle(Trigger.new);
}
