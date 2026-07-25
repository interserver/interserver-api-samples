@isTest
private class IntServerDomainContactDetailsTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerDomainContactDetails domainContactDetails1 = IntServerDomainContactDetails.getExample();
        IntServerDomainContactDetails domainContactDetails2 = domainContactDetails1;
        IntServerDomainContactDetails domainContactDetails3 = new IntServerDomainContactDetails();
        IntServerDomainContactDetails domainContactDetails4 = domainContactDetails3;

        System.assert(domainContactDetails1.equals(domainContactDetails2));
        System.assert(domainContactDetails2.equals(domainContactDetails1));
        System.assert(domainContactDetails1.equals(domainContactDetails1));
        System.assert(domainContactDetails3.equals(domainContactDetails4));
        System.assert(domainContactDetails4.equals(domainContactDetails3));
        System.assert(domainContactDetails3.equals(domainContactDetails3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerDomainContactDetails domainContactDetails1 = IntServerDomainContactDetails.getExample();
        IntServerDomainContactDetails domainContactDetails2 = IntServerDomainContactDetails.getExample();
        IntServerDomainContactDetails domainContactDetails3 = new IntServerDomainContactDetails();
        IntServerDomainContactDetails domainContactDetails4 = new IntServerDomainContactDetails();

        System.assert(domainContactDetails1.equals(domainContactDetails2));
        System.assert(domainContactDetails2.equals(domainContactDetails1));
        System.assert(domainContactDetails3.equals(domainContactDetails4));
        System.assert(domainContactDetails4.equals(domainContactDetails3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerDomainContactDetails domainContactDetails1 = IntServerDomainContactDetails.getExample();
        IntServerDomainContactDetails domainContactDetails2 = new IntServerDomainContactDetails();

        System.assertEquals(false, domainContactDetails1.equals('foo'));
        System.assertEquals(false, domainContactDetails2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerDomainContactDetails domainContactDetails1 = IntServerDomainContactDetails.getExample();
        IntServerDomainContactDetails domainContactDetails2 = new IntServerDomainContactDetails();
        IntServerDomainContactDetails domainContactDetails3;

        System.assertEquals(false, domainContactDetails1.equals(domainContactDetails3));
        System.assertEquals(false, domainContactDetails2.equals(domainContactDetails3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerDomainContactDetails domainContactDetails1 = IntServerDomainContactDetails.getExample();
        IntServerDomainContactDetails domainContactDetails2 = new IntServerDomainContactDetails();

        System.assertEquals(domainContactDetails1.hashCode(), domainContactDetails1.hashCode());
        System.assertEquals(domainContactDetails2.hashCode(), domainContactDetails2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerDomainContactDetails domainContactDetails1 = IntServerDomainContactDetails.getExample();
        IntServerDomainContactDetails domainContactDetails2 = IntServerDomainContactDetails.getExample();
        IntServerDomainContactDetails domainContactDetails3 = new IntServerDomainContactDetails();
        IntServerDomainContactDetails domainContactDetails4 = new IntServerDomainContactDetails();

        System.assert(domainContactDetails1.equals(domainContactDetails2));
        System.assert(domainContactDetails3.equals(domainContactDetails4));
        System.assertEquals(domainContactDetails1.hashCode(), domainContactDetails2.hashCode());
        System.assertEquals(domainContactDetails3.hashCode(), domainContactDetails4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerDomainContactDetails domainContactDetails = new IntServerDomainContactDetails();
        Map<String, String> x-property-mappings = domainContactDetails.getx-property-mappings();
        System.assertEquals('orgName', x-property-mappings.get('org_name'));
        System.assertEquals('postalCode', x-property-mappings.get('postal_code'));
        System.assertEquals('firstName', x-property-mappings.get('first_name'));
        System.assertEquals('lastName', x-property-mappings.get('last_name'));
    }
}
