@isTest
private class IntServerDomainTechContactTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerDomainTechContact domainTechContact1 = IntServerDomainTechContact.getExample();
        IntServerDomainTechContact domainTechContact2 = domainTechContact1;
        IntServerDomainTechContact domainTechContact3 = new IntServerDomainTechContact();
        IntServerDomainTechContact domainTechContact4 = domainTechContact3;

        System.assert(domainTechContact1.equals(domainTechContact2));
        System.assert(domainTechContact2.equals(domainTechContact1));
        System.assert(domainTechContact1.equals(domainTechContact1));
        System.assert(domainTechContact3.equals(domainTechContact4));
        System.assert(domainTechContact4.equals(domainTechContact3));
        System.assert(domainTechContact3.equals(domainTechContact3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerDomainTechContact domainTechContact1 = IntServerDomainTechContact.getExample();
        IntServerDomainTechContact domainTechContact2 = IntServerDomainTechContact.getExample();
        IntServerDomainTechContact domainTechContact3 = new IntServerDomainTechContact();
        IntServerDomainTechContact domainTechContact4 = new IntServerDomainTechContact();

        System.assert(domainTechContact1.equals(domainTechContact2));
        System.assert(domainTechContact2.equals(domainTechContact1));
        System.assert(domainTechContact3.equals(domainTechContact4));
        System.assert(domainTechContact4.equals(domainTechContact3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerDomainTechContact domainTechContact1 = IntServerDomainTechContact.getExample();
        IntServerDomainTechContact domainTechContact2 = new IntServerDomainTechContact();

        System.assertEquals(false, domainTechContact1.equals('foo'));
        System.assertEquals(false, domainTechContact2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerDomainTechContact domainTechContact1 = IntServerDomainTechContact.getExample();
        IntServerDomainTechContact domainTechContact2 = new IntServerDomainTechContact();
        IntServerDomainTechContact domainTechContact3;

        System.assertEquals(false, domainTechContact1.equals(domainTechContact3));
        System.assertEquals(false, domainTechContact2.equals(domainTechContact3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerDomainTechContact domainTechContact1 = IntServerDomainTechContact.getExample();
        IntServerDomainTechContact domainTechContact2 = new IntServerDomainTechContact();

        System.assertEquals(domainTechContact1.hashCode(), domainTechContact1.hashCode());
        System.assertEquals(domainTechContact2.hashCode(), domainTechContact2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerDomainTechContact domainTechContact1 = IntServerDomainTechContact.getExample();
        IntServerDomainTechContact domainTechContact2 = IntServerDomainTechContact.getExample();
        IntServerDomainTechContact domainTechContact3 = new IntServerDomainTechContact();
        IntServerDomainTechContact domainTechContact4 = new IntServerDomainTechContact();

        System.assert(domainTechContact1.equals(domainTechContact2));
        System.assert(domainTechContact3.equals(domainTechContact4));
        System.assertEquals(domainTechContact1.hashCode(), domainTechContact2.hashCode());
        System.assertEquals(domainTechContact3.hashCode(), domainTechContact4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerDomainTechContact domainTechContact = new IntServerDomainTechContact();
        Map<String, String> x-property-mappings = domainTechContact.getx-property-mappings();
        System.assertEquals('orgName', x-property-mappings.get('org_name'));
        System.assertEquals('postalCode', x-property-mappings.get('postal_code'));
        System.assertEquals('firstName', x-property-mappings.get('first_name'));
        System.assertEquals('lastName', x-property-mappings.get('last_name'));
    }
}
