trigger Bench129Trigger on Bench129__c (before insert, before update) {
    BenchService0129.handle(Trigger.new);
}
