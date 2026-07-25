@isTest
private class IntServerDomainDnssecRecordsInnerTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerDomainDnssecRecordsInner domainDnssecRecordsInner1 = IntServerDomainDnssecRecordsInner.getExample();
        IntServerDomainDnssecRecordsInner domainDnssecRecordsInner2 = domainDnssecRecordsInner1;
        IntServerDomainDnssecRecordsInner domainDnssecRecordsInner3 = new IntServerDomainDnssecRecordsInner();
        IntServerDomainDnssecRecordsInner domainDnssecRecordsInner4 = domainDnssecRecordsInner3;

        System.assert(domainDnssecRecordsInner1.equals(domainDnssecRecordsInner2));
        System.assert(domainDnssecRecordsInner2.equals(domainDnssecRecordsInner1));
        System.assert(domainDnssecRecordsInner1.equals(domainDnssecRecordsInner1));
        System.assert(domainDnssecRecordsInner3.equals(domainDnssecRecordsInner4));
        System.assert(domainDnssecRecordsInner4.equals(domainDnssecRecordsInner3));
        System.assert(domainDnssecRecordsInner3.equals(domainDnssecRecordsInner3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerDomainDnssecRecordsInner domainDnssecRecordsInner1 = IntServerDomainDnssecRecordsInner.getExample();
        IntServerDomainDnssecRecordsInner domainDnssecRecordsInner2 = IntServerDomainDnssecRecordsInner.getExample();
        IntServerDomainDnssecRecordsInner domainDnssecRecordsInner3 = new IntServerDomainDnssecRecordsInner();
        IntServerDomainDnssecRecordsInner domainDnssecRecordsInner4 = new IntServerDomainDnssecRecordsInner();

        System.assert(domainDnssecRecordsInner1.equals(domainDnssecRecordsInner2));
        System.assert(domainDnssecRecordsInner2.equals(domainDnssecRecordsInner1));
        System.assert(domainDnssecRecordsInner3.equals(domainDnssecRecordsInner4));
        System.assert(domainDnssecRecordsInner4.equals(domainDnssecRecordsInner3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerDomainDnssecRecordsInner domainDnssecRecordsInner1 = IntServerDomainDnssecRecordsInner.getExample();
        IntServerDomainDnssecRecordsInner domainDnssecRecordsInner2 = new IntServerDomainDnssecRecordsInner();

        System.assertEquals(false, domainDnssecRecordsInner1.equals('foo'));
        System.assertEquals(false, domainDnssecRecordsInner2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerDomainDnssecRecordsInner domainDnssecRecordsInner1 = IntServerDomainDnssecRecordsInner.getExample();
        IntServerDomainDnssecRecordsInner domainDnssecRecordsInner2 = new IntServerDomainDnssecRecordsInner();
        IntServerDomainDnssecRecordsInner domainDnssecRecordsInner3;

        System.assertEquals(false, domainDnssecRecordsInner1.equals(domainDnssecRecordsInner3));
        System.assertEquals(false, domainDnssecRecordsInner2.equals(domainDnssecRecordsInner3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerDomainDnssecRecordsInner domainDnssecRecordsInner1 = IntServerDomainDnssecRecordsInner.getExample();
        IntServerDomainDnssecRecordsInner domainDnssecRecordsInner2 = new IntServerDomainDnssecRecordsInner();

        System.assertEquals(domainDnssecRecordsInner1.hashCode(), domainDnssecRecordsInner1.hashCode());
        System.assertEquals(domainDnssecRecordsInner2.hashCode(), domainDnssecRecordsInner2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerDomainDnssecRecordsInner domainDnssecRecordsInner1 = IntServerDomainDnssecRecordsInner.getExample();
        IntServerDomainDnssecRecordsInner domainDnssecRecordsInner2 = IntServerDomainDnssecRecordsInner.getExample();
        IntServerDomainDnssecRecordsInner domainDnssecRecordsInner3 = new IntServerDomainDnssecRecordsInner();
        IntServerDomainDnssecRecordsInner domainDnssecRecordsInner4 = new IntServerDomainDnssecRecordsInner();

        System.assert(domainDnssecRecordsInner1.equals(domainDnssecRecordsInner2));
        System.assert(domainDnssecRecordsInner3.equals(domainDnssecRecordsInner4));
        System.assertEquals(domainDnssecRecordsInner1.hashCode(), domainDnssecRecordsInner2.hashCode());
        System.assertEquals(domainDnssecRecordsInner3.hashCode(), domainDnssecRecordsInner4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerDomainDnssecRecordsInner domainDnssecRecordsInner = new IntServerDomainDnssecRecordsInner();
        Map<String, String> x-property-mappings = domainDnssecRecordsInner.getx-property-mappings();
        System.assertEquals('digestType', x-property-mappings.get('digest_type'));
        System.assertEquals('keyTag', x-property-mappings.get('key_tag'));
    }
}
