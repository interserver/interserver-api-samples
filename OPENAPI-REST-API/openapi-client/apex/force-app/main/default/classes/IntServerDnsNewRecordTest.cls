@isTest
private class IntServerDnsNewRecordTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerDnsNewRecord dnsNewRecord1 = IntServerDnsNewRecord.getExample();
        IntServerDnsNewRecord dnsNewRecord2 = dnsNewRecord1;
        IntServerDnsNewRecord dnsNewRecord3 = new IntServerDnsNewRecord();
        IntServerDnsNewRecord dnsNewRecord4 = dnsNewRecord3;

        System.assert(dnsNewRecord1.equals(dnsNewRecord2));
        System.assert(dnsNewRecord2.equals(dnsNewRecord1));
        System.assert(dnsNewRecord1.equals(dnsNewRecord1));
        System.assert(dnsNewRecord3.equals(dnsNewRecord4));
        System.assert(dnsNewRecord4.equals(dnsNewRecord3));
        System.assert(dnsNewRecord3.equals(dnsNewRecord3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerDnsNewRecord dnsNewRecord1 = IntServerDnsNewRecord.getExample();
        IntServerDnsNewRecord dnsNewRecord2 = IntServerDnsNewRecord.getExample();
        IntServerDnsNewRecord dnsNewRecord3 = new IntServerDnsNewRecord();
        IntServerDnsNewRecord dnsNewRecord4 = new IntServerDnsNewRecord();

        System.assert(dnsNewRecord1.equals(dnsNewRecord2));
        System.assert(dnsNewRecord2.equals(dnsNewRecord1));
        System.assert(dnsNewRecord3.equals(dnsNewRecord4));
        System.assert(dnsNewRecord4.equals(dnsNewRecord3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerDnsNewRecord dnsNewRecord1 = IntServerDnsNewRecord.getExample();
        IntServerDnsNewRecord dnsNewRecord2 = new IntServerDnsNewRecord();

        System.assertEquals(false, dnsNewRecord1.equals('foo'));
        System.assertEquals(false, dnsNewRecord2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerDnsNewRecord dnsNewRecord1 = IntServerDnsNewRecord.getExample();
        IntServerDnsNewRecord dnsNewRecord2 = new IntServerDnsNewRecord();
        IntServerDnsNewRecord dnsNewRecord3;

        System.assertEquals(false, dnsNewRecord1.equals(dnsNewRecord3));
        System.assertEquals(false, dnsNewRecord2.equals(dnsNewRecord3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerDnsNewRecord dnsNewRecord1 = IntServerDnsNewRecord.getExample();
        IntServerDnsNewRecord dnsNewRecord2 = new IntServerDnsNewRecord();

        System.assertEquals(dnsNewRecord1.hashCode(), dnsNewRecord1.hashCode());
        System.assertEquals(dnsNewRecord2.hashCode(), dnsNewRecord2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerDnsNewRecord dnsNewRecord1 = IntServerDnsNewRecord.getExample();
        IntServerDnsNewRecord dnsNewRecord2 = IntServerDnsNewRecord.getExample();
        IntServerDnsNewRecord dnsNewRecord3 = new IntServerDnsNewRecord();
        IntServerDnsNewRecord dnsNewRecord4 = new IntServerDnsNewRecord();

        System.assert(dnsNewRecord1.equals(dnsNewRecord2));
        System.assert(dnsNewRecord3.equals(dnsNewRecord4));
        System.assertEquals(dnsNewRecord1.hashCode(), dnsNewRecord2.hashCode());
        System.assertEquals(dnsNewRecord3.hashCode(), dnsNewRecord4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        IntServerDnsNewRecord dnsNewRecord = new IntServerDnsNewRecord();
        System.assertEquals(86400, dnsNewRecord.ttl);
        System.assertEquals(0, dnsNewRecord.prio);
        System.assertEquals(null, dnsNewRecord.name);
        System.assertEquals(null, dnsNewRecord.type);
        System.assertEquals(null, dnsNewRecord.content);
    }
}
