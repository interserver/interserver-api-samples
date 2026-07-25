@isTest
private class IntServerDomainNameserverPutRequestTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerDomainNameserverPutRequest domainNameserverPutRequest1 = IntServerDomainNameserverPutRequest.getExample();
        IntServerDomainNameserverPutRequest domainNameserverPutRequest2 = domainNameserverPutRequest1;
        IntServerDomainNameserverPutRequest domainNameserverPutRequest3 = new IntServerDomainNameserverPutRequest();
        IntServerDomainNameserverPutRequest domainNameserverPutRequest4 = domainNameserverPutRequest3;

        System.assert(domainNameserverPutRequest1.equals(domainNameserverPutRequest2));
        System.assert(domainNameserverPutRequest2.equals(domainNameserverPutRequest1));
        System.assert(domainNameserverPutRequest1.equals(domainNameserverPutRequest1));
        System.assert(domainNameserverPutRequest3.equals(domainNameserverPutRequest4));
        System.assert(domainNameserverPutRequest4.equals(domainNameserverPutRequest3));
        System.assert(domainNameserverPutRequest3.equals(domainNameserverPutRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerDomainNameserverPutRequest domainNameserverPutRequest1 = IntServerDomainNameserverPutRequest.getExample();
        IntServerDomainNameserverPutRequest domainNameserverPutRequest2 = IntServerDomainNameserverPutRequest.getExample();
        IntServerDomainNameserverPutRequest domainNameserverPutRequest3 = new IntServerDomainNameserverPutRequest();
        IntServerDomainNameserverPutRequest domainNameserverPutRequest4 = new IntServerDomainNameserverPutRequest();

        System.assert(domainNameserverPutRequest1.equals(domainNameserverPutRequest2));
        System.assert(domainNameserverPutRequest2.equals(domainNameserverPutRequest1));
        System.assert(domainNameserverPutRequest3.equals(domainNameserverPutRequest4));
        System.assert(domainNameserverPutRequest4.equals(domainNameserverPutRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerDomainNameserverPutRequest domainNameserverPutRequest1 = IntServerDomainNameserverPutRequest.getExample();
        IntServerDomainNameserverPutRequest domainNameserverPutRequest2 = new IntServerDomainNameserverPutRequest();

        System.assertEquals(false, domainNameserverPutRequest1.equals('foo'));
        System.assertEquals(false, domainNameserverPutRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerDomainNameserverPutRequest domainNameserverPutRequest1 = IntServerDomainNameserverPutRequest.getExample();
        IntServerDomainNameserverPutRequest domainNameserverPutRequest2 = new IntServerDomainNameserverPutRequest();
        IntServerDomainNameserverPutRequest domainNameserverPutRequest3;

        System.assertEquals(false, domainNameserverPutRequest1.equals(domainNameserverPutRequest3));
        System.assertEquals(false, domainNameserverPutRequest2.equals(domainNameserverPutRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerDomainNameserverPutRequest domainNameserverPutRequest1 = IntServerDomainNameserverPutRequest.getExample();
        IntServerDomainNameserverPutRequest domainNameserverPutRequest2 = new IntServerDomainNameserverPutRequest();

        System.assertEquals(domainNameserverPutRequest1.hashCode(), domainNameserverPutRequest1.hashCode());
        System.assertEquals(domainNameserverPutRequest2.hashCode(), domainNameserverPutRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerDomainNameserverPutRequest domainNameserverPutRequest1 = IntServerDomainNameserverPutRequest.getExample();
        IntServerDomainNameserverPutRequest domainNameserverPutRequest2 = IntServerDomainNameserverPutRequest.getExample();
        IntServerDomainNameserverPutRequest domainNameserverPutRequest3 = new IntServerDomainNameserverPutRequest();
        IntServerDomainNameserverPutRequest domainNameserverPutRequest4 = new IntServerDomainNameserverPutRequest();

        System.assert(domainNameserverPutRequest1.equals(domainNameserverPutRequest2));
        System.assert(domainNameserverPutRequest3.equals(domainNameserverPutRequest4));
        System.assertEquals(domainNameserverPutRequest1.hashCode(), domainNameserverPutRequest2.hashCode());
        System.assertEquals(domainNameserverPutRequest3.hashCode(), domainNameserverPutRequest4.hashCode());
    }

    @isTest
    private static void defaultValuesPopulated() {
        IntServerDomainNameserverPutRequest domainNameserverPutRequest = new IntServerDomainNameserverPutRequest();
        System.assertEquals(new List<String>(), domainNameserverPutRequest.nameserver);
    }
}
