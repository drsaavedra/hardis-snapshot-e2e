trigger Bench254Trigger on Bench254__c (before insert, before update) {
    BenchService0254.handle(Trigger.new);
}
