@isTest
private class IntServerDomainOrderRequestTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerDomainOrderRequest domainOrderRequest1 = IntServerDomainOrderRequest.getExample();
        IntServerDomainOrderRequest domainOrderRequest2 = domainOrderRequest1;
        IntServerDomainOrderRequest domainOrderRequest3 = new IntServerDomainOrderRequest();
        IntServerDomainOrderRequest domainOrderRequest4 = domainOrderRequest3;

        System.assert(domainOrderRequest1.equals(domainOrderRequest2));
        System.assert(domainOrderRequest2.equals(domainOrderRequest1));
        System.assert(domainOrderRequest1.equals(domainOrderRequest1));
        System.assert(domainOrderRequest3.equals(domainOrderRequest4));
        System.assert(domainOrderRequest4.equals(domainOrderRequest3));
        System.assert(domainOrderRequest3.equals(domainOrderRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerDomainOrderRequest domainOrderRequest1 = IntServerDomainOrderRequest.getExample();
        IntServerDomainOrderRequest domainOrderRequest2 = IntServerDomainOrderRequest.getExample();
        IntServerDomainOrderRequest domainOrderRequest3 = new IntServerDomainOrderRequest();
        IntServerDomainOrderRequest domainOrderRequest4 = new IntServerDomainOrderRequest();

        System.assert(domainOrderRequest1.equals(domainOrderRequest2));
        System.assert(domainOrderRequest2.equals(domainOrderRequest1));
        System.assert(domainOrderRequest3.equals(domainOrderRequest4));
        System.assert(domainOrderRequest4.equals(domainOrderRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerDomainOrderRequest domainOrderRequest1 = IntServerDomainOrderRequest.getExample();
        IntServerDomainOrderRequest domainOrderRequest2 = new IntServerDomainOrderRequest();

        System.assertEquals(false, domainOrderRequest1.equals('foo'));
        System.assertEquals(false, domainOrderRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerDomainOrderRequest domainOrderRequest1 = IntServerDomainOrderRequest.getExample();
        IntServerDomainOrderRequest domainOrderRequest2 = new IntServerDomainOrderRequest();
        IntServerDomainOrderRequest domainOrderRequest3;

        System.assertEquals(false, domainOrderRequest1.equals(domainOrderRequest3));
        System.assertEquals(false, domainOrderRequest2.equals(domainOrderRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerDomainOrderRequest domainOrderRequest1 = IntServerDomainOrderRequest.getExample();
        IntServerDomainOrderRequest domainOrderRequest2 = new IntServerDomainOrderRequest();

        System.assertEquals(domainOrderRequest1.hashCode(), domainOrderRequest1.hashCode());
        System.assertEquals(domainOrderRequest2.hashCode(), domainOrderRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerDomainOrderRequest domainOrderRequest1 = IntServerDomainOrderRequest.getExample();
        IntServerDomainOrderRequest domainOrderRequest2 = IntServerDomainOrderRequest.getExample();
        IntServerDomainOrderRequest domainOrderRequest3 = new IntServerDomainOrderRequest();
        IntServerDomainOrderRequest domainOrderRequest4 = new IntServerDomainOrderRequest();

        System.assert(domainOrderRequest1.equals(domainOrderRequest2));
        System.assert(domainOrderRequest3.equals(domainOrderRequest4));
        System.assertEquals(domainOrderRequest1.hashCode(), domainOrderRequest2.hashCode());
        System.assertEquals(domainOrderRequest3.hashCode(), domainOrderRequest4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerDomainOrderRequest domainOrderRequest = new IntServerDomainOrderRequest();
        Map<String, String> x-property-mappings = domainOrderRequest.getx-property-mappings();
        System.assertEquals('whoisPrivacy', x-property-mappings.get('whois_privacy'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        IntServerDomainOrderRequest domainOrderRequest = new IntServerDomainOrderRequest();
        System.assertEquals(TypeEnum.REGISTER, domainOrderRequest.type);
        System.assertEquals('', domainOrderRequest.coupon);
        System.assertEquals(null, domainOrderRequest.hostname);
        System.assertEquals(null, domainOrderRequest.whoisPrivacy);
    }
}
