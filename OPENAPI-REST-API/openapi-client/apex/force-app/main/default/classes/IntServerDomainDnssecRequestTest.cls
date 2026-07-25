@isTest
private class IntServerDomainDnssecRequestTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerDomainDnssecRequest domainDnssecRequest1 = IntServerDomainDnssecRequest.getExample();
        IntServerDomainDnssecRequest domainDnssecRequest2 = domainDnssecRequest1;
        IntServerDomainDnssecRequest domainDnssecRequest3 = new IntServerDomainDnssecRequest();
        IntServerDomainDnssecRequest domainDnssecRequest4 = domainDnssecRequest3;

        System.assert(domainDnssecRequest1.equals(domainDnssecRequest2));
        System.assert(domainDnssecRequest2.equals(domainDnssecRequest1));
        System.assert(domainDnssecRequest1.equals(domainDnssecRequest1));
        System.assert(domainDnssecRequest3.equals(domainDnssecRequest4));
        System.assert(domainDnssecRequest4.equals(domainDnssecRequest3));
        System.assert(domainDnssecRequest3.equals(domainDnssecRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerDomainDnssecRequest domainDnssecRequest1 = IntServerDomainDnssecRequest.getExample();
        IntServerDomainDnssecRequest domainDnssecRequest2 = IntServerDomainDnssecRequest.getExample();
        IntServerDomainDnssecRequest domainDnssecRequest3 = new IntServerDomainDnssecRequest();
        IntServerDomainDnssecRequest domainDnssecRequest4 = new IntServerDomainDnssecRequest();

        System.assert(domainDnssecRequest1.equals(domainDnssecRequest2));
        System.assert(domainDnssecRequest2.equals(domainDnssecRequest1));
        System.assert(domainDnssecRequest3.equals(domainDnssecRequest4));
        System.assert(domainDnssecRequest4.equals(domainDnssecRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerDomainDnssecRequest domainDnssecRequest1 = IntServerDomainDnssecRequest.getExample();
        IntServerDomainDnssecRequest domainDnssecRequest2 = new IntServerDomainDnssecRequest();

        System.assertEquals(false, domainDnssecRequest1.equals('foo'));
        System.assertEquals(false, domainDnssecRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerDomainDnssecRequest domainDnssecRequest1 = IntServerDomainDnssecRequest.getExample();
        IntServerDomainDnssecRequest domainDnssecRequest2 = new IntServerDomainDnssecRequest();
        IntServerDomainDnssecRequest domainDnssecRequest3;

        System.assertEquals(false, domainDnssecRequest1.equals(domainDnssecRequest3));
        System.assertEquals(false, domainDnssecRequest2.equals(domainDnssecRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerDomainDnssecRequest domainDnssecRequest1 = IntServerDomainDnssecRequest.getExample();
        IntServerDomainDnssecRequest domainDnssecRequest2 = new IntServerDomainDnssecRequest();

        System.assertEquals(domainDnssecRequest1.hashCode(), domainDnssecRequest1.hashCode());
        System.assertEquals(domainDnssecRequest2.hashCode(), domainDnssecRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerDomainDnssecRequest domainDnssecRequest1 = IntServerDomainDnssecRequest.getExample();
        IntServerDomainDnssecRequest domainDnssecRequest2 = IntServerDomainDnssecRequest.getExample();
        IntServerDomainDnssecRequest domainDnssecRequest3 = new IntServerDomainDnssecRequest();
        IntServerDomainDnssecRequest domainDnssecRequest4 = new IntServerDomainDnssecRequest();

        System.assert(domainDnssecRequest1.equals(domainDnssecRequest2));
        System.assert(domainDnssecRequest3.equals(domainDnssecRequest4));
        System.assertEquals(domainDnssecRequest1.hashCode(), domainDnssecRequest2.hashCode());
        System.assertEquals(domainDnssecRequest3.hashCode(), domainDnssecRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerDomainDnssecRequest domainDnssecRequest = new IntServerDomainDnssecRequest();
        Map<String, String> x-property-mappings = domainDnssecRequest.getx-property-mappings();
        System.assertEquals('digestType', x-property-mappings.get('digest_type'));
        System.assertEquals('keyTag', x-property-mappings.get('key_tag'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        IntServerDomainDnssecRequest domainDnssecRequest = new IntServerDomainDnssecRequest();
        System.assertEquals(new List<Integer>(), domainDnssecRequest.algorithm);
        System.assertEquals(new List<Integer>(), domainDnssecRequest.digestType);
        System.assertEquals(new List<String>(), domainDnssecRequest.digest);
        System.assertEquals(new List<Integer>(), domainDnssecRequest.keyTag);
    }
}
