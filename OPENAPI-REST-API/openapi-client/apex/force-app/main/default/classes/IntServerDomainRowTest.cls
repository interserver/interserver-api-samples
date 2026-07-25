@isTest
private class IntServerDomainRowTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerDomainRow domainRow1 = IntServerDomainRow.getExample();
        IntServerDomainRow domainRow2 = domainRow1;
        IntServerDomainRow domainRow3 = new IntServerDomainRow();
        IntServerDomainRow domainRow4 = domainRow3;

        System.assert(domainRow1.equals(domainRow2));
        System.assert(domainRow2.equals(domainRow1));
        System.assert(domainRow1.equals(domainRow1));
        System.assert(domainRow3.equals(domainRow4));
        System.assert(domainRow4.equals(domainRow3));
        System.assert(domainRow3.equals(domainRow3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerDomainRow domainRow1 = IntServerDomainRow.getExample();
        IntServerDomainRow domainRow2 = IntServerDomainRow.getExample();
        IntServerDomainRow domainRow3 = new IntServerDomainRow();
        IntServerDomainRow domainRow4 = new IntServerDomainRow();

        System.assert(domainRow1.equals(domainRow2));
        System.assert(domainRow2.equals(domainRow1));
        System.assert(domainRow3.equals(domainRow4));
        System.assert(domainRow4.equals(domainRow3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerDomainRow domainRow1 = IntServerDomainRow.getExample();
        IntServerDomainRow domainRow2 = new IntServerDomainRow();

        System.assertEquals(false, domainRow1.equals('foo'));
        System.assertEquals(false, domainRow2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerDomainRow domainRow1 = IntServerDomainRow.getExample();
        IntServerDomainRow domainRow2 = new IntServerDomainRow();
        IntServerDomainRow domainRow3;

        System.assertEquals(false, domainRow1.equals(domainRow3));
        System.assertEquals(false, domainRow2.equals(domainRow3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerDomainRow domainRow1 = IntServerDomainRow.getExample();
        IntServerDomainRow domainRow2 = new IntServerDomainRow();

        System.assertEquals(domainRow1.hashCode(), domainRow1.hashCode());
        System.assertEquals(domainRow2.hashCode(), domainRow2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerDomainRow domainRow1 = IntServerDomainRow.getExample();
        IntServerDomainRow domainRow2 = IntServerDomainRow.getExample();
        IntServerDomainRow domainRow3 = new IntServerDomainRow();
        IntServerDomainRow domainRow4 = new IntServerDomainRow();

        System.assert(domainRow1.equals(domainRow2));
        System.assert(domainRow3.equals(domainRow4));
        System.assertEquals(domainRow1.hashCode(), domainRow2.hashCode());
        System.assertEquals(domainRow3.hashCode(), domainRow4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerDomainRow domainRow = new IntServerDomainRow();
        Map<String, String> x-property-mappings = domainRow.getx-property-mappings();
        System.assertEquals('domainId', x-property-mappings.get('domain_id'));
        System.assertEquals('domainHostname', x-property-mappings.get('domain_hostname'));
        System.assertEquals('domainExpireDate', x-property-mappings.get('domain_expire_date'));
        System.assertEquals('domainStatus', x-property-mappings.get('domain_status'));
    }
}
