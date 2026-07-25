@isTest
private class IntServerDomainNameserverGetResponseTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerDomainNameserverGetResponse domainNameserverGetResponseInner1 = IntServerDomainNameserverGetResponse.getExample();
        IntServerDomainNameserverGetResponse domainNameserverGetResponseInner2 = domainNameserverGetResponseInner1;
        IntServerDomainNameserverGetResponse domainNameserverGetResponseInner3 = new IntServerDomainNameserverGetResponse();
        IntServerDomainNameserverGetResponse domainNameserverGetResponseInner4 = domainNameserverGetResponseInner3;

        System.assert(domainNameserverGetResponseInner1.equals(domainNameserverGetResponseInner2));
        System.assert(domainNameserverGetResponseInner2.equals(domainNameserverGetResponseInner1));
        System.assert(domainNameserverGetResponseInner1.equals(domainNameserverGetResponseInner1));
        System.assert(domainNameserverGetResponseInner3.equals(domainNameserverGetResponseInner4));
        System.assert(domainNameserverGetResponseInner4.equals(domainNameserverGetResponseInner3));
        System.assert(domainNameserverGetResponseInner3.equals(domainNameserverGetResponseInner3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerDomainNameserverGetResponse domainNameserverGetResponseInner1 = IntServerDomainNameserverGetResponse.getExample();
        IntServerDomainNameserverGetResponse domainNameserverGetResponseInner2 = IntServerDomainNameserverGetResponse.getExample();
        IntServerDomainNameserverGetResponse domainNameserverGetResponseInner3 = new IntServerDomainNameserverGetResponse();
        IntServerDomainNameserverGetResponse domainNameserverGetResponseInner4 = new IntServerDomainNameserverGetResponse();

        System.assert(domainNameserverGetResponseInner1.equals(domainNameserverGetResponseInner2));
        System.assert(domainNameserverGetResponseInner2.equals(domainNameserverGetResponseInner1));
        System.assert(domainNameserverGetResponseInner3.equals(domainNameserverGetResponseInner4));
        System.assert(domainNameserverGetResponseInner4.equals(domainNameserverGetResponseInner3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerDomainNameserverGetResponse domainNameserverGetResponseInner1 = IntServerDomainNameserverGetResponse.getExample();
        IntServerDomainNameserverGetResponse domainNameserverGetResponseInner2 = new IntServerDomainNameserverGetResponse();

        System.assertEquals(false, domainNameserverGetResponseInner1.equals('foo'));
        System.assertEquals(false, domainNameserverGetResponseInner2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerDomainNameserverGetResponse domainNameserverGetResponseInner1 = IntServerDomainNameserverGetResponse.getExample();
        IntServerDomainNameserverGetResponse domainNameserverGetResponseInner2 = new IntServerDomainNameserverGetResponse();
        IntServerDomainNameserverGetResponse domainNameserverGetResponseInner3;

        System.assertEquals(false, domainNameserverGetResponseInner1.equals(domainNameserverGetResponseInner3));
        System.assertEquals(false, domainNameserverGetResponseInner2.equals(domainNameserverGetResponseInner3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerDomainNameserverGetResponse domainNameserverGetResponseInner1 = IntServerDomainNameserverGetResponse.getExample();
        IntServerDomainNameserverGetResponse domainNameserverGetResponseInner2 = new IntServerDomainNameserverGetResponse();

        System.assertEquals(domainNameserverGetResponseInner1.hashCode(), domainNameserverGetResponseInner1.hashCode());
        System.assertEquals(domainNameserverGetResponseInner2.hashCode(), domainNameserverGetResponseInner2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerDomainNameserverGetResponse domainNameserverGetResponseInner1 = IntServerDomainNameserverGetResponse.getExample();
        IntServerDomainNameserverGetResponse domainNameserverGetResponseInner2 = IntServerDomainNameserverGetResponse.getExample();
        IntServerDomainNameserverGetResponse domainNameserverGetResponseInner3 = new IntServerDomainNameserverGetResponse();
        IntServerDomainNameserverGetResponse domainNameserverGetResponseInner4 = new IntServerDomainNameserverGetResponse();

        System.assert(domainNameserverGetResponseInner1.equals(domainNameserverGetResponseInner2));
        System.assert(domainNameserverGetResponseInner3.equals(domainNameserverGetResponseInner4));
        System.assertEquals(domainNameserverGetResponseInner1.hashCode(), domainNameserverGetResponseInner2.hashCode());
        System.assertEquals(domainNameserverGetResponseInner3.hashCode(), domainNameserverGetResponseInner4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerDomainNameserverGetResponse domainNameserverGetResponseInner = new IntServerDomainNameserverGetResponse();
        Map<String, String> x-property-mappings = domainNameserverGetResponseInner.getx-property-mappings();
        System.assertEquals('canDelete', x-property-mappings.get('can_delete'));
    }
}
