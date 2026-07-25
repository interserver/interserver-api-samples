@isTest
private class IntServerDomainNameserverPostRequestTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerDomainNameserverPostRequest domainNameserverPostRequest1 = IntServerDomainNameserverPostRequest.getExample();
        IntServerDomainNameserverPostRequest domainNameserverPostRequest2 = domainNameserverPostRequest1;
        IntServerDomainNameserverPostRequest domainNameserverPostRequest3 = new IntServerDomainNameserverPostRequest();
        IntServerDomainNameserverPostRequest domainNameserverPostRequest4 = domainNameserverPostRequest3;

        System.assert(domainNameserverPostRequest1.equals(domainNameserverPostRequest2));
        System.assert(domainNameserverPostRequest2.equals(domainNameserverPostRequest1));
        System.assert(domainNameserverPostRequest1.equals(domainNameserverPostRequest1));
        System.assert(domainNameserverPostRequest3.equals(domainNameserverPostRequest4));
        System.assert(domainNameserverPostRequest4.equals(domainNameserverPostRequest3));
        System.assert(domainNameserverPostRequest3.equals(domainNameserverPostRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerDomainNameserverPostRequest domainNameserverPostRequest1 = IntServerDomainNameserverPostRequest.getExample();
        IntServerDomainNameserverPostRequest domainNameserverPostRequest2 = IntServerDomainNameserverPostRequest.getExample();
        IntServerDomainNameserverPostRequest domainNameserverPostRequest3 = new IntServerDomainNameserverPostRequest();
        IntServerDomainNameserverPostRequest domainNameserverPostRequest4 = new IntServerDomainNameserverPostRequest();

        System.assert(domainNameserverPostRequest1.equals(domainNameserverPostRequest2));
        System.assert(domainNameserverPostRequest2.equals(domainNameserverPostRequest1));
        System.assert(domainNameserverPostRequest3.equals(domainNameserverPostRequest4));
        System.assert(domainNameserverPostRequest4.equals(domainNameserverPostRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerDomainNameserverPostRequest domainNameserverPostRequest1 = IntServerDomainNameserverPostRequest.getExample();
        IntServerDomainNameserverPostRequest domainNameserverPostRequest2 = new IntServerDomainNameserverPostRequest();

        System.assertEquals(false, domainNameserverPostRequest1.equals('foo'));
        System.assertEquals(false, domainNameserverPostRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerDomainNameserverPostRequest domainNameserverPostRequest1 = IntServerDomainNameserverPostRequest.getExample();
        IntServerDomainNameserverPostRequest domainNameserverPostRequest2 = new IntServerDomainNameserverPostRequest();
        IntServerDomainNameserverPostRequest domainNameserverPostRequest3;

        System.assertEquals(false, domainNameserverPostRequest1.equals(domainNameserverPostRequest3));
        System.assertEquals(false, domainNameserverPostRequest2.equals(domainNameserverPostRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerDomainNameserverPostRequest domainNameserverPostRequest1 = IntServerDomainNameserverPostRequest.getExample();
        IntServerDomainNameserverPostRequest domainNameserverPostRequest2 = new IntServerDomainNameserverPostRequest();

        System.assertEquals(domainNameserverPostRequest1.hashCode(), domainNameserverPostRequest1.hashCode());
        System.assertEquals(domainNameserverPostRequest2.hashCode(), domainNameserverPostRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerDomainNameserverPostRequest domainNameserverPostRequest1 = IntServerDomainNameserverPostRequest.getExample();
        IntServerDomainNameserverPostRequest domainNameserverPostRequest2 = IntServerDomainNameserverPostRequest.getExample();
        IntServerDomainNameserverPostRequest domainNameserverPostRequest3 = new IntServerDomainNameserverPostRequest();
        IntServerDomainNameserverPostRequest domainNameserverPostRequest4 = new IntServerDomainNameserverPostRequest();

        System.assert(domainNameserverPostRequest1.equals(domainNameserverPostRequest2));
        System.assert(domainNameserverPostRequest3.equals(domainNameserverPostRequest4));
        System.assertEquals(domainNameserverPostRequest1.hashCode(), domainNameserverPostRequest2.hashCode());
        System.assertEquals(domainNameserverPostRequest3.hashCode(), domainNameserverPostRequest4.hashCode());
    }
}
