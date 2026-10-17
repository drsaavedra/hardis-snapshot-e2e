trigger Bench247Trigger on Bench247__c (before insert, before update) {
    BenchService0247.handle(Trigger.new);
}
