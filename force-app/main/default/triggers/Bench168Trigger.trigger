trigger Bench168Trigger on Bench168__c (before insert, before update) {
    BenchService0168.handle(Trigger.new);
}
