@isTest
private class IntServerDnsRecordTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerDnsRecord dnsRecord1 = IntServerDnsRecord.getExample();
        IntServerDnsRecord dnsRecord2 = dnsRecord1;
        IntServerDnsRecord dnsRecord3 = new IntServerDnsRecord();
        IntServerDnsRecord dnsRecord4 = dnsRecord3;

        System.assert(dnsRecord1.equals(dnsRecord2));
        System.assert(dnsRecord2.equals(dnsRecord1));
        System.assert(dnsRecord1.equals(dnsRecord1));
        System.assert(dnsRecord3.equals(dnsRecord4));
        System.assert(dnsRecord4.equals(dnsRecord3));
        System.assert(dnsRecord3.equals(dnsRecord3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerDnsRecord dnsRecord1 = IntServerDnsRecord.getExample();
        IntServerDnsRecord dnsRecord2 = IntServerDnsRecord.getExample();
        IntServerDnsRecord dnsRecord3 = new IntServerDnsRecord();
        IntServerDnsRecord dnsRecord4 = new IntServerDnsRecord();

        System.assert(dnsRecord1.equals(dnsRecord2));
        System.assert(dnsRecord2.equals(dnsRecord1));
        System.assert(dnsRecord3.equals(dnsRecord4));
        System.assert(dnsRecord4.equals(dnsRecord3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerDnsRecord dnsRecord1 = IntServerDnsRecord.getExample();
        IntServerDnsRecord dnsRecord2 = new IntServerDnsRecord();

        System.assertEquals(false, dnsRecord1.equals('foo'));
        System.assertEquals(false, dnsRecord2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerDnsRecord dnsRecord1 = IntServerDnsRecord.getExample();
        IntServerDnsRecord dnsRecord2 = new IntServerDnsRecord();
        IntServerDnsRecord dnsRecord3;

        System.assertEquals(false, dnsRecord1.equals(dnsRecord3));
        System.assertEquals(false, dnsRecord2.equals(dnsRecord3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerDnsRecord dnsRecord1 = IntServerDnsRecord.getExample();
        IntServerDnsRecord dnsRecord2 = new IntServerDnsRecord();

        System.assertEquals(dnsRecord1.hashCode(), dnsRecord1.hashCode());
        System.assertEquals(dnsRecord2.hashCode(), dnsRecord2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerDnsRecord dnsRecord1 = IntServerDnsRecord.getExample();
        IntServerDnsRecord dnsRecord2 = IntServerDnsRecord.getExample();
        IntServerDnsRecord dnsRecord3 = new IntServerDnsRecord();
        IntServerDnsRecord dnsRecord4 = new IntServerDnsRecord();

        System.assert(dnsRecord1.equals(dnsRecord2));
        System.assert(dnsRecord3.equals(dnsRecord4));
        System.assertEquals(dnsRecord1.hashCode(), dnsRecord2.hashCode());
        System.assertEquals(dnsRecord3.hashCode(), dnsRecord4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerDnsRecord dnsRecord = new IntServerDnsRecord();
        Map<String, String> x-property-mappings = dnsRecord.getx-property-mappings();
        System.assertEquals('domainId', x-property-mappings.get('domain_id'));
    }
}
