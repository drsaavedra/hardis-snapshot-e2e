trigger Bench208Trigger on Bench208__c (before insert, before update) {
    BenchService0208.handle(Trigger.new);
}
