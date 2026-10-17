trigger Bench269Trigger on Bench269__c (before insert, before update) {
    BenchService0269.handle(Trigger.new);
}
