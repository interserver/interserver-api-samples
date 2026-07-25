@isTest
private class IntServerDomainOwnerContactTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerDomainOwnerContact domainOwnerContact1 = IntServerDomainOwnerContact.getExample();
        IntServerDomainOwnerContact domainOwnerContact2 = domainOwnerContact1;
        IntServerDomainOwnerContact domainOwnerContact3 = new IntServerDomainOwnerContact();
        IntServerDomainOwnerContact domainOwnerContact4 = domainOwnerContact3;

        System.assert(domainOwnerContact1.equals(domainOwnerContact2));
        System.assert(domainOwnerContact2.equals(domainOwnerContact1));
        System.assert(domainOwnerContact1.equals(domainOwnerContact1));
        System.assert(domainOwnerContact3.equals(domainOwnerContact4));
        System.assert(domainOwnerContact4.equals(domainOwnerContact3));
        System.assert(domainOwnerContact3.equals(domainOwnerContact3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerDomainOwnerContact domainOwnerContact1 = IntServerDomainOwnerContact.getExample();
        IntServerDomainOwnerContact domainOwnerContact2 = IntServerDomainOwnerContact.getExample();
        IntServerDomainOwnerContact domainOwnerContact3 = new IntServerDomainOwnerContact();
        IntServerDomainOwnerContact domainOwnerContact4 = new IntServerDomainOwnerContact();

        System.assert(domainOwnerContact1.equals(domainOwnerContact2));
        System.assert(domainOwnerContact2.equals(domainOwnerContact1));
        System.assert(domainOwnerContact3.equals(domainOwnerContact4));
        System.assert(domainOwnerContact4.equals(domainOwnerContact3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerDomainOwnerContact domainOwnerContact1 = IntServerDomainOwnerContact.getExample();
        IntServerDomainOwnerContact domainOwnerContact2 = new IntServerDomainOwnerContact();

        System.assertEquals(false, domainOwnerContact1.equals('foo'));
        System.assertEquals(false, domainOwnerContact2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerDomainOwnerContact domainOwnerContact1 = IntServerDomainOwnerContact.getExample();
        IntServerDomainOwnerContact domainOwnerContact2 = new IntServerDomainOwnerContact();
        IntServerDomainOwnerContact domainOwnerContact3;

        System.assertEquals(false, domainOwnerContact1.equals(domainOwnerContact3));
        System.assertEquals(false, domainOwnerContact2.equals(domainOwnerContact3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerDomainOwnerContact domainOwnerContact1 = IntServerDomainOwnerContact.getExample();
        IntServerDomainOwnerContact domainOwnerContact2 = new IntServerDomainOwnerContact();

        System.assertEquals(domainOwnerContact1.hashCode(), domainOwnerContact1.hashCode());
        System.assertEquals(domainOwnerContact2.hashCode(), domainOwnerContact2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerDomainOwnerContact domainOwnerContact1 = IntServerDomainOwnerContact.getExample();
        IntServerDomainOwnerContact domainOwnerContact2 = IntServerDomainOwnerContact.getExample();
        IntServerDomainOwnerContact domainOwnerContact3 = new IntServerDomainOwnerContact();
        IntServerDomainOwnerContact domainOwnerContact4 = new IntServerDomainOwnerContact();

        System.assert(domainOwnerContact1.equals(domainOwnerContact2));
        System.assert(domainOwnerContact3.equals(domainOwnerContact4));
        System.assertEquals(domainOwnerContact1.hashCode(), domainOwnerContact2.hashCode());
        System.assertEquals(domainOwnerContact3.hashCode(), domainOwnerContact4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerDomainOwnerContact domainOwnerContact = new IntServerDomainOwnerContact();
        Map<String, String> x-property-mappings = domainOwnerContact.getx-property-mappings();
        System.assertEquals('postalCode', x-property-mappings.get('postal_code'));
        System.assertEquals('orgName', x-property-mappings.get('org_name'));
        System.assertEquals('firstName', x-property-mappings.get('first_name'));
        System.assertEquals('lastName', x-property-mappings.get('last_name'));
    }
}
