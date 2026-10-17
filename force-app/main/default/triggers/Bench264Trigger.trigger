trigger Bench264Trigger on Bench264__c (before insert, before update) {
    BenchService0264.handle(Trigger.new);
}
