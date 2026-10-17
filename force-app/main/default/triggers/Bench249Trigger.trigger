trigger Bench249Trigger on Bench249__c (before insert, before update) {
    BenchService0249.handle(Trigger.new);
}
