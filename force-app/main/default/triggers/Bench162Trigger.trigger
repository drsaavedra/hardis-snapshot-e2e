trigger Bench162Trigger on Bench162__c (before insert, before update) {
    BenchService0162.handle(Trigger.new);
}
