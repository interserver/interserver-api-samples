@isTest
private class IntServerDomainNameServerTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerDomainNameServer domainNameServer1 = IntServerDomainNameServer.getExample();
        IntServerDomainNameServer domainNameServer2 = domainNameServer1;
        IntServerDomainNameServer domainNameServer3 = new IntServerDomainNameServer();
        IntServerDomainNameServer domainNameServer4 = domainNameServer3;

        System.assert(domainNameServer1.equals(domainNameServer2));
        System.assert(domainNameServer2.equals(domainNameServer1));
        System.assert(domainNameServer1.equals(domainNameServer1));
        System.assert(domainNameServer3.equals(domainNameServer4));
        System.assert(domainNameServer4.equals(domainNameServer3));
        System.assert(domainNameServer3.equals(domainNameServer3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerDomainNameServer domainNameServer1 = IntServerDomainNameServer.getExample();
        IntServerDomainNameServer domainNameServer2 = IntServerDomainNameServer.getExample();
        IntServerDomainNameServer domainNameServer3 = new IntServerDomainNameServer();
        IntServerDomainNameServer domainNameServer4 = new IntServerDomainNameServer();

        System.assert(domainNameServer1.equals(domainNameServer2));
        System.assert(domainNameServer2.equals(domainNameServer1));
        System.assert(domainNameServer3.equals(domainNameServer4));
        System.assert(domainNameServer4.equals(domainNameServer3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerDomainNameServer domainNameServer1 = IntServerDomainNameServer.getExample();
        IntServerDomainNameServer domainNameServer2 = new IntServerDomainNameServer();

        System.assertEquals(false, domainNameServer1.equals('foo'));
        System.assertEquals(false, domainNameServer2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerDomainNameServer domainNameServer1 = IntServerDomainNameServer.getExample();
        IntServerDomainNameServer domainNameServer2 = new IntServerDomainNameServer();
        IntServerDomainNameServer domainNameServer3;

        System.assertEquals(false, domainNameServer1.equals(domainNameServer3));
        System.assertEquals(false, domainNameServer2.equals(domainNameServer3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerDomainNameServer domainNameServer1 = IntServerDomainNameServer.getExample();
        IntServerDomainNameServer domainNameServer2 = new IntServerDomainNameServer();

        System.assertEquals(domainNameServer1.hashCode(), domainNameServer1.hashCode());
        System.assertEquals(domainNameServer2.hashCode(), domainNameServer2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerDomainNameServer domainNameServer1 = IntServerDomainNameServer.getExample();
        IntServerDomainNameServer domainNameServer2 = IntServerDomainNameServer.getExample();
        IntServerDomainNameServer domainNameServer3 = new IntServerDomainNameServer();
        IntServerDomainNameServer domainNameServer4 = new IntServerDomainNameServer();

        System.assert(domainNameServer1.equals(domainNameServer2));
        System.assert(domainNameServer3.equals(domainNameServer4));
        System.assertEquals(domainNameServer1.hashCode(), domainNameServer2.hashCode());
        System.assertEquals(domainNameServer3.hashCode(), domainNameServer4.hashCode());
    }
}
