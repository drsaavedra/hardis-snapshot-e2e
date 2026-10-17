trigger Bench185Trigger on Bench185__c (before insert, before update) {
    BenchService0185.handle(Trigger.new);
}
