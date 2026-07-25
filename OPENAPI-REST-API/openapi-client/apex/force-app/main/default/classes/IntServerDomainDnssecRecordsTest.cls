@isTest
private class IntServerDomainDnssecRecordsTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerDomainDnssecRecords domainDnssecRecords1 = IntServerDomainDnssecRecords.getExample();
        IntServerDomainDnssecRecords domainDnssecRecords2 = domainDnssecRecords1;
        IntServerDomainDnssecRecords domainDnssecRecords3 = new IntServerDomainDnssecRecords();
        IntServerDomainDnssecRecords domainDnssecRecords4 = domainDnssecRecords3;

        System.assert(domainDnssecRecords1.equals(domainDnssecRecords2));
        System.assert(domainDnssecRecords2.equals(domainDnssecRecords1));
        System.assert(domainDnssecRecords1.equals(domainDnssecRecords1));
        System.assert(domainDnssecRecords3.equals(domainDnssecRecords4));
        System.assert(domainDnssecRecords4.equals(domainDnssecRecords3));
        System.assert(domainDnssecRecords3.equals(domainDnssecRecords3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerDomainDnssecRecords domainDnssecRecords1 = IntServerDomainDnssecRecords.getExample();
        IntServerDomainDnssecRecords domainDnssecRecords2 = IntServerDomainDnssecRecords.getExample();
        IntServerDomainDnssecRecords domainDnssecRecords3 = new IntServerDomainDnssecRecords();
        IntServerDomainDnssecRecords domainDnssecRecords4 = new IntServerDomainDnssecRecords();

        System.assert(domainDnssecRecords1.equals(domainDnssecRecords2));
        System.assert(domainDnssecRecords2.equals(domainDnssecRecords1));
        System.assert(domainDnssecRecords3.equals(domainDnssecRecords4));
        System.assert(domainDnssecRecords4.equals(domainDnssecRecords3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerDomainDnssecRecords domainDnssecRecords1 = IntServerDomainDnssecRecords.getExample();
        IntServerDomainDnssecRecords domainDnssecRecords2 = new IntServerDomainDnssecRecords();

        System.assertEquals(false, domainDnssecRecords1.equals('foo'));
        System.assertEquals(false, domainDnssecRecords2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerDomainDnssecRecords domainDnssecRecords1 = IntServerDomainDnssecRecords.getExample();
        IntServerDomainDnssecRecords domainDnssecRecords2 = new IntServerDomainDnssecRecords();
        IntServerDomainDnssecRecords domainDnssecRecords3;

        System.assertEquals(false, domainDnssecRecords1.equals(domainDnssecRecords3));
        System.assertEquals(false, domainDnssecRecords2.equals(domainDnssecRecords3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerDomainDnssecRecords domainDnssecRecords1 = IntServerDomainDnssecRecords.getExample();
        IntServerDomainDnssecRecords domainDnssecRecords2 = new IntServerDomainDnssecRecords();

        System.assertEquals(domainDnssecRecords1.hashCode(), domainDnssecRecords1.hashCode());
        System.assertEquals(domainDnssecRecords2.hashCode(), domainDnssecRecords2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerDomainDnssecRecords domainDnssecRecords1 = IntServerDomainDnssecRecords.getExample();
        IntServerDomainDnssecRecords domainDnssecRecords2 = IntServerDomainDnssecRecords.getExample();
        IntServerDomainDnssecRecords domainDnssecRecords3 = new IntServerDomainDnssecRecords();
        IntServerDomainDnssecRecords domainDnssecRecords4 = new IntServerDomainDnssecRecords();

        System.assert(domainDnssecRecords1.equals(domainDnssecRecords2));
        System.assert(domainDnssecRecords3.equals(domainDnssecRecords4));
        System.assertEquals(domainDnssecRecords1.hashCode(), domainDnssecRecords2.hashCode());
        System.assertEquals(domainDnssecRecords3.hashCode(), domainDnssecRecords4.hashCode());
    }
}
