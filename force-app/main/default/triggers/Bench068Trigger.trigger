trigger Bench068Trigger on Bench068__c (before insert, before update) {
    BenchService0068.handle(Trigger.new);
}
