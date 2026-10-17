trigger Bench239Trigger on Bench239__c (before insert, before update) {
    BenchService0239.handle(Trigger.new);
}
