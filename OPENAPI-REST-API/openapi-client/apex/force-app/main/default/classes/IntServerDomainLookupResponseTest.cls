@isTest
private class IntServerDomainLookupResponseTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerDomainLookupResponse domainLookupResponse1 = IntServerDomainLookupResponse.getExample();
        IntServerDomainLookupResponse domainLookupResponse2 = domainLookupResponse1;
        IntServerDomainLookupResponse domainLookupResponse3 = new IntServerDomainLookupResponse();
        IntServerDomainLookupResponse domainLookupResponse4 = domainLookupResponse3;

        System.assert(domainLookupResponse1.equals(domainLookupResponse2));
        System.assert(domainLookupResponse2.equals(domainLookupResponse1));
        System.assert(domainLookupResponse1.equals(domainLookupResponse1));
        System.assert(domainLookupResponse3.equals(domainLookupResponse4));
        System.assert(domainLookupResponse4.equals(domainLookupResponse3));
        System.assert(domainLookupResponse3.equals(domainLookupResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerDomainLookupResponse domainLookupResponse1 = IntServerDomainLookupResponse.getExample();
        IntServerDomainLookupResponse domainLookupResponse2 = IntServerDomainLookupResponse.getExample();
        IntServerDomainLookupResponse domainLookupResponse3 = new IntServerDomainLookupResponse();
        IntServerDomainLookupResponse domainLookupResponse4 = new IntServerDomainLookupResponse();

        System.assert(domainLookupResponse1.equals(domainLookupResponse2));
        System.assert(domainLookupResponse2.equals(domainLookupResponse1));
        System.assert(domainLookupResponse3.equals(domainLookupResponse4));
        System.assert(domainLookupResponse4.equals(domainLookupResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerDomainLookupResponse domainLookupResponse1 = IntServerDomainLookupResponse.getExample();
        IntServerDomainLookupResponse domainLookupResponse2 = new IntServerDomainLookupResponse();

        System.assertEquals(false, domainLookupResponse1.equals('foo'));
        System.assertEquals(false, domainLookupResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerDomainLookupResponse domainLookupResponse1 = IntServerDomainLookupResponse.getExample();
        IntServerDomainLookupResponse domainLookupResponse2 = new IntServerDomainLookupResponse();
        IntServerDomainLookupResponse domainLookupResponse3;

        System.assertEquals(false, domainLookupResponse1.equals(domainLookupResponse3));
        System.assertEquals(false, domainLookupResponse2.equals(domainLookupResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerDomainLookupResponse domainLookupResponse1 = IntServerDomainLookupResponse.getExample();
        IntServerDomainLookupResponse domainLookupResponse2 = new IntServerDomainLookupResponse();

        System.assertEquals(domainLookupResponse1.hashCode(), domainLookupResponse1.hashCode());
        System.assertEquals(domainLookupResponse2.hashCode(), domainLookupResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerDomainLookupResponse domainLookupResponse1 = IntServerDomainLookupResponse.getExample();
        IntServerDomainLookupResponse domainLookupResponse2 = IntServerDomainLookupResponse.getExample();
        IntServerDomainLookupResponse domainLookupResponse3 = new IntServerDomainLookupResponse();
        IntServerDomainLookupResponse domainLookupResponse4 = new IntServerDomainLookupResponse();

        System.assert(domainLookupResponse1.equals(domainLookupResponse2));
        System.assert(domainLookupResponse3.equals(domainLookupResponse4));
        System.assertEquals(domainLookupResponse1.hashCode(), domainLookupResponse2.hashCode());
        System.assertEquals(domainLookupResponse3.hashCode(), domainLookupResponse4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerDomainLookupResponse domainLookupResponse = new IntServerDomainLookupResponse();
        Map<String, String> x-property-mappings = domainLookupResponse.getx-property-mappings();
        System.assertEquals('domainService', x-property-mappings.get('domain_service'));
        System.assertEquals('whoisPrivacy', x-property-mappings.get('whois_privacy'));
        System.assertEquals('r_new', x-property-mappings.get('new'));
    }
}
