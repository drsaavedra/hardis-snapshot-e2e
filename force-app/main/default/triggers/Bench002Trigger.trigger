trigger Bench002Trigger on Bench002__c (before insert, before update) {
    BenchService0002.handle(Trigger.new);
}
