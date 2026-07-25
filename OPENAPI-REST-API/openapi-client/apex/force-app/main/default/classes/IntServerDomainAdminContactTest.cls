@isTest
private class IntServerDomainAdminContactTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerDomainAdminContact domainAdminContact1 = IntServerDomainAdminContact.getExample();
        IntServerDomainAdminContact domainAdminContact2 = domainAdminContact1;
        IntServerDomainAdminContact domainAdminContact3 = new IntServerDomainAdminContact();
        IntServerDomainAdminContact domainAdminContact4 = domainAdminContact3;

        System.assert(domainAdminContact1.equals(domainAdminContact2));
        System.assert(domainAdminContact2.equals(domainAdminContact1));
        System.assert(domainAdminContact1.equals(domainAdminContact1));
        System.assert(domainAdminContact3.equals(domainAdminContact4));
        System.assert(domainAdminContact4.equals(domainAdminContact3));
        System.assert(domainAdminContact3.equals(domainAdminContact3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerDomainAdminContact domainAdminContact1 = IntServerDomainAdminContact.getExample();
        IntServerDomainAdminContact domainAdminContact2 = IntServerDomainAdminContact.getExample();
        IntServerDomainAdminContact domainAdminContact3 = new IntServerDomainAdminContact();
        IntServerDomainAdminContact domainAdminContact4 = new IntServerDomainAdminContact();

        System.assert(domainAdminContact1.equals(domainAdminContact2));
        System.assert(domainAdminContact2.equals(domainAdminContact1));
        System.assert(domainAdminContact3.equals(domainAdminContact4));
        System.assert(domainAdminContact4.equals(domainAdminContact3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerDomainAdminContact domainAdminContact1 = IntServerDomainAdminContact.getExample();
        IntServerDomainAdminContact domainAdminContact2 = new IntServerDomainAdminContact();

        System.assertEquals(false, domainAdminContact1.equals('foo'));
        System.assertEquals(false, domainAdminContact2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerDomainAdminContact domainAdminContact1 = IntServerDomainAdminContact.getExample();
        IntServerDomainAdminContact domainAdminContact2 = new IntServerDomainAdminContact();
        IntServerDomainAdminContact domainAdminContact3;

        System.assertEquals(false, domainAdminContact1.equals(domainAdminContact3));
        System.assertEquals(false, domainAdminContact2.equals(domainAdminContact3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerDomainAdminContact domainAdminContact1 = IntServerDomainAdminContact.getExample();
        IntServerDomainAdminContact domainAdminContact2 = new IntServerDomainAdminContact();

        System.assertEquals(domainAdminContact1.hashCode(), domainAdminContact1.hashCode());
        System.assertEquals(domainAdminContact2.hashCode(), domainAdminContact2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerDomainAdminContact domainAdminContact1 = IntServerDomainAdminContact.getExample();
        IntServerDomainAdminContact domainAdminContact2 = IntServerDomainAdminContact.getExample();
        IntServerDomainAdminContact domainAdminContact3 = new IntServerDomainAdminContact();
        IntServerDomainAdminContact domainAdminContact4 = new IntServerDomainAdminContact();

        System.assert(domainAdminContact1.equals(domainAdminContact2));
        System.assert(domainAdminContact3.equals(domainAdminContact4));
        System.assertEquals(domainAdminContact1.hashCode(), domainAdminContact2.hashCode());
        System.assertEquals(domainAdminContact3.hashCode(), domainAdminContact4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerDomainAdminContact domainAdminContact = new IntServerDomainAdminContact();
        Map<String, String> x-property-mappings = domainAdminContact.getx-property-mappings();
        System.assertEquals('orgName', x-property-mappings.get('org_name'));
        System.assertEquals('postalCode', x-property-mappings.get('postal_code'));
        System.assertEquals('firstName', x-property-mappings.get('first_name'));
        System.assertEquals('lastName', x-property-mappings.get('last_name'));
    }
}
