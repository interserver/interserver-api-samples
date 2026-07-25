@isTest
private class IntServerDenyRuleRecordTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerDenyRuleRecord denyRuleRecord1 = IntServerDenyRuleRecord.getExample();
        IntServerDenyRuleRecord denyRuleRecord2 = denyRuleRecord1;
        IntServerDenyRuleRecord denyRuleRecord3 = new IntServerDenyRuleRecord();
        IntServerDenyRuleRecord denyRuleRecord4 = denyRuleRecord3;

        System.assert(denyRuleRecord1.equals(denyRuleRecord2));
        System.assert(denyRuleRecord2.equals(denyRuleRecord1));
        System.assert(denyRuleRecord1.equals(denyRuleRecord1));
        System.assert(denyRuleRecord3.equals(denyRuleRecord4));
        System.assert(denyRuleRecord4.equals(denyRuleRecord3));
        System.assert(denyRuleRecord3.equals(denyRuleRecord3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerDenyRuleRecord denyRuleRecord1 = IntServerDenyRuleRecord.getExample();
        IntServerDenyRuleRecord denyRuleRecord2 = IntServerDenyRuleRecord.getExample();
        IntServerDenyRuleRecord denyRuleRecord3 = new IntServerDenyRuleRecord();
        IntServerDenyRuleRecord denyRuleRecord4 = new IntServerDenyRuleRecord();

        System.assert(denyRuleRecord1.equals(denyRuleRecord2));
        System.assert(denyRuleRecord2.equals(denyRuleRecord1));
        System.assert(denyRuleRecord3.equals(denyRuleRecord4));
        System.assert(denyRuleRecord4.equals(denyRuleRecord3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerDenyRuleRecord denyRuleRecord1 = IntServerDenyRuleRecord.getExample();
        IntServerDenyRuleRecord denyRuleRecord2 = new IntServerDenyRuleRecord();

        System.assertEquals(false, denyRuleRecord1.equals('foo'));
        System.assertEquals(false, denyRuleRecord2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerDenyRuleRecord denyRuleRecord1 = IntServerDenyRuleRecord.getExample();
        IntServerDenyRuleRecord denyRuleRecord2 = new IntServerDenyRuleRecord();
        IntServerDenyRuleRecord denyRuleRecord3;

        System.assertEquals(false, denyRuleRecord1.equals(denyRuleRecord3));
        System.assertEquals(false, denyRuleRecord2.equals(denyRuleRecord3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerDenyRuleRecord denyRuleRecord1 = IntServerDenyRuleRecord.getExample();
        IntServerDenyRuleRecord denyRuleRecord2 = new IntServerDenyRuleRecord();

        System.assertEquals(denyRuleRecord1.hashCode(), denyRuleRecord1.hashCode());
        System.assertEquals(denyRuleRecord2.hashCode(), denyRuleRecord2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerDenyRuleRecord denyRuleRecord1 = IntServerDenyRuleRecord.getExample();
        IntServerDenyRuleRecord denyRuleRecord2 = IntServerDenyRuleRecord.getExample();
        IntServerDenyRuleRecord denyRuleRecord3 = new IntServerDenyRuleRecord();
        IntServerDenyRuleRecord denyRuleRecord4 = new IntServerDenyRuleRecord();

        System.assert(denyRuleRecord1.equals(denyRuleRecord2));
        System.assert(denyRuleRecord3.equals(denyRuleRecord4));
        System.assertEquals(denyRuleRecord1.hashCode(), denyRuleRecord2.hashCode());
        System.assertEquals(denyRuleRecord3.hashCode(), denyRuleRecord4.hashCode());
    }
}
