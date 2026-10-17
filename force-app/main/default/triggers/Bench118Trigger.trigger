trigger Bench118Trigger on Bench118__c (before insert, before update) {
    BenchService0118.handle(Trigger.new);
}
