@isTest
private class IntServerDnsUpdateRecordTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerDnsUpdateRecord dnsUpdateRecord1 = IntServerDnsUpdateRecord.getExample();
        IntServerDnsUpdateRecord dnsUpdateRecord2 = dnsUpdateRecord1;
        IntServerDnsUpdateRecord dnsUpdateRecord3 = new IntServerDnsUpdateRecord();
        IntServerDnsUpdateRecord dnsUpdateRecord4 = dnsUpdateRecord3;

        System.assert(dnsUpdateRecord1.equals(dnsUpdateRecord2));
        System.assert(dnsUpdateRecord2.equals(dnsUpdateRecord1));
        System.assert(dnsUpdateRecord1.equals(dnsUpdateRecord1));
        System.assert(dnsUpdateRecord3.equals(dnsUpdateRecord4));
        System.assert(dnsUpdateRecord4.equals(dnsUpdateRecord3));
        System.assert(dnsUpdateRecord3.equals(dnsUpdateRecord3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerDnsUpdateRecord dnsUpdateRecord1 = IntServerDnsUpdateRecord.getExample();
        IntServerDnsUpdateRecord dnsUpdateRecord2 = IntServerDnsUpdateRecord.getExample();
        IntServerDnsUpdateRecord dnsUpdateRecord3 = new IntServerDnsUpdateRecord();
        IntServerDnsUpdateRecord dnsUpdateRecord4 = new IntServerDnsUpdateRecord();

        System.assert(dnsUpdateRecord1.equals(dnsUpdateRecord2));
        System.assert(dnsUpdateRecord2.equals(dnsUpdateRecord1));
        System.assert(dnsUpdateRecord3.equals(dnsUpdateRecord4));
        System.assert(dnsUpdateRecord4.equals(dnsUpdateRecord3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerDnsUpdateRecord dnsUpdateRecord1 = IntServerDnsUpdateRecord.getExample();
        IntServerDnsUpdateRecord dnsUpdateRecord2 = new IntServerDnsUpdateRecord();

        System.assertEquals(false, dnsUpdateRecord1.equals('foo'));
        System.assertEquals(false, dnsUpdateRecord2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerDnsUpdateRecord dnsUpdateRecord1 = IntServerDnsUpdateRecord.getExample();
        IntServerDnsUpdateRecord dnsUpdateRecord2 = new IntServerDnsUpdateRecord();
        IntServerDnsUpdateRecord dnsUpdateRecord3;

        System.assertEquals(false, dnsUpdateRecord1.equals(dnsUpdateRecord3));
        System.assertEquals(false, dnsUpdateRecord2.equals(dnsUpdateRecord3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerDnsUpdateRecord dnsUpdateRecord1 = IntServerDnsUpdateRecord.getExample();
        IntServerDnsUpdateRecord dnsUpdateRecord2 = new IntServerDnsUpdateRecord();

        System.assertEquals(dnsUpdateRecord1.hashCode(), dnsUpdateRecord1.hashCode());
        System.assertEquals(dnsUpdateRecord2.hashCode(), dnsUpdateRecord2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerDnsUpdateRecord dnsUpdateRecord1 = IntServerDnsUpdateRecord.getExample();
        IntServerDnsUpdateRecord dnsUpdateRecord2 = IntServerDnsUpdateRecord.getExample();
        IntServerDnsUpdateRecord dnsUpdateRecord3 = new IntServerDnsUpdateRecord();
        IntServerDnsUpdateRecord dnsUpdateRecord4 = new IntServerDnsUpdateRecord();

        System.assert(dnsUpdateRecord1.equals(dnsUpdateRecord2));
        System.assert(dnsUpdateRecord3.equals(dnsUpdateRecord4));
        System.assertEquals(dnsUpdateRecord1.hashCode(), dnsUpdateRecord2.hashCode());
        System.assertEquals(dnsUpdateRecord3.hashCode(), dnsUpdateRecord4.hashCode());
    }
}
