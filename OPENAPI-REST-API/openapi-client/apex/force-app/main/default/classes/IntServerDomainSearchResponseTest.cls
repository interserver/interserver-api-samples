@isTest
private class IntServerDomainSearchResponseTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerDomainSearchResponse domainSearchResponse1 = IntServerDomainSearchResponse.getExample();
        IntServerDomainSearchResponse domainSearchResponse2 = domainSearchResponse1;
        IntServerDomainSearchResponse domainSearchResponse3 = new IntServerDomainSearchResponse();
        IntServerDomainSearchResponse domainSearchResponse4 = domainSearchResponse3;

        System.assert(domainSearchResponse1.equals(domainSearchResponse2));
        System.assert(domainSearchResponse2.equals(domainSearchResponse1));
        System.assert(domainSearchResponse1.equals(domainSearchResponse1));
        System.assert(domainSearchResponse3.equals(domainSearchResponse4));
        System.assert(domainSearchResponse4.equals(domainSearchResponse3));
        System.assert(domainSearchResponse3.equals(domainSearchResponse3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerDomainSearchResponse domainSearchResponse1 = IntServerDomainSearchResponse.getExample();
        IntServerDomainSearchResponse domainSearchResponse2 = IntServerDomainSearchResponse.getExample();
        IntServerDomainSearchResponse domainSearchResponse3 = new IntServerDomainSearchResponse();
        IntServerDomainSearchResponse domainSearchResponse4 = new IntServerDomainSearchResponse();

        System.assert(domainSearchResponse1.equals(domainSearchResponse2));
        System.assert(domainSearchResponse2.equals(domainSearchResponse1));
        System.assert(domainSearchResponse3.equals(domainSearchResponse4));
        System.assert(domainSearchResponse4.equals(domainSearchResponse3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerDomainSearchResponse domainSearchResponse1 = IntServerDomainSearchResponse.getExample();
        IntServerDomainSearchResponse domainSearchResponse2 = new IntServerDomainSearchResponse();

        System.assertEquals(false, domainSearchResponse1.equals('foo'));
        System.assertEquals(false, domainSearchResponse2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerDomainSearchResponse domainSearchResponse1 = IntServerDomainSearchResponse.getExample();
        IntServerDomainSearchResponse domainSearchResponse2 = new IntServerDomainSearchResponse();
        IntServerDomainSearchResponse domainSearchResponse3;

        System.assertEquals(false, domainSearchResponse1.equals(domainSearchResponse3));
        System.assertEquals(false, domainSearchResponse2.equals(domainSearchResponse3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerDomainSearchResponse domainSearchResponse1 = IntServerDomainSearchResponse.getExample();
        IntServerDomainSearchResponse domainSearchResponse2 = new IntServerDomainSearchResponse();

        System.assertEquals(domainSearchResponse1.hashCode(), domainSearchResponse1.hashCode());
        System.assertEquals(domainSearchResponse2.hashCode(), domainSearchResponse2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerDomainSearchResponse domainSearchResponse1 = IntServerDomainSearchResponse.getExample();
        IntServerDomainSearchResponse domainSearchResponse2 = IntServerDomainSearchResponse.getExample();
        IntServerDomainSearchResponse domainSearchResponse3 = new IntServerDomainSearchResponse();
        IntServerDomainSearchResponse domainSearchResponse4 = new IntServerDomainSearchResponse();

        System.assert(domainSearchResponse1.equals(domainSearchResponse2));
        System.assert(domainSearchResponse3.equals(domainSearchResponse4));
        System.assertEquals(domainSearchResponse1.hashCode(), domainSearchResponse2.hashCode());
        System.assertEquals(domainSearchResponse3.hashCode(), domainSearchResponse4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerDomainSearchResponse domainSearchResponse = new IntServerDomainSearchResponse();
        Map<String, String> x-property-mappings = domainSearchResponse.getx-property-mappings();
        System.assertEquals('responseText', x-property-mappings.get('response_text'));
        System.assertEquals('responseTime', x-property-mappings.get('response_time'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        IntServerDomainSearchResponse domainSearchResponse = new IntServerDomainSearchResponse();
        System.assertEquals(new List<Object>(), domainSearchResponse.lookup);
        System.assertEquals(new List<Object>(), domainSearchResponse.suggest);
        System.assertEquals(new List<String>(), domainSearchResponse.tlds);
        System.assertEquals(null, domainSearchResponse.success);
        System.assertEquals(null, domainSearchResponse.responseText);
        System.assertEquals(null, domainSearchResponse.responseTime);
    }
}
