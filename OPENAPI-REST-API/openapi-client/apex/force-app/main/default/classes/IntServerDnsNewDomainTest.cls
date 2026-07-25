@isTest
private class IntServerDnsNewDomainTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerDnsNewDomain dnsNewDomain1 = IntServerDnsNewDomain.getExample();
        IntServerDnsNewDomain dnsNewDomain2 = dnsNewDomain1;
        IntServerDnsNewDomain dnsNewDomain3 = new IntServerDnsNewDomain();
        IntServerDnsNewDomain dnsNewDomain4 = dnsNewDomain3;

        System.assert(dnsNewDomain1.equals(dnsNewDomain2));
        System.assert(dnsNewDomain2.equals(dnsNewDomain1));
        System.assert(dnsNewDomain1.equals(dnsNewDomain1));
        System.assert(dnsNewDomain3.equals(dnsNewDomain4));
        System.assert(dnsNewDomain4.equals(dnsNewDomain3));
        System.assert(dnsNewDomain3.equals(dnsNewDomain3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerDnsNewDomain dnsNewDomain1 = IntServerDnsNewDomain.getExample();
        IntServerDnsNewDomain dnsNewDomain2 = IntServerDnsNewDomain.getExample();
        IntServerDnsNewDomain dnsNewDomain3 = new IntServerDnsNewDomain();
        IntServerDnsNewDomain dnsNewDomain4 = new IntServerDnsNewDomain();

        System.assert(dnsNewDomain1.equals(dnsNewDomain2));
        System.assert(dnsNewDomain2.equals(dnsNewDomain1));
        System.assert(dnsNewDomain3.equals(dnsNewDomain4));
        System.assert(dnsNewDomain4.equals(dnsNewDomain3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerDnsNewDomain dnsNewDomain1 = IntServerDnsNewDomain.getExample();
        IntServerDnsNewDomain dnsNewDomain2 = new IntServerDnsNewDomain();

        System.assertEquals(false, dnsNewDomain1.equals('foo'));
        System.assertEquals(false, dnsNewDomain2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerDnsNewDomain dnsNewDomain1 = IntServerDnsNewDomain.getExample();
        IntServerDnsNewDomain dnsNewDomain2 = new IntServerDnsNewDomain();
        IntServerDnsNewDomain dnsNewDomain3;

        System.assertEquals(false, dnsNewDomain1.equals(dnsNewDomain3));
        System.assertEquals(false, dnsNewDomain2.equals(dnsNewDomain3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerDnsNewDomain dnsNewDomain1 = IntServerDnsNewDomain.getExample();
        IntServerDnsNewDomain dnsNewDomain2 = new IntServerDnsNewDomain();

        System.assertEquals(dnsNewDomain1.hashCode(), dnsNewDomain1.hashCode());
        System.assertEquals(dnsNewDomain2.hashCode(), dnsNewDomain2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerDnsNewDomain dnsNewDomain1 = IntServerDnsNewDomain.getExample();
        IntServerDnsNewDomain dnsNewDomain2 = IntServerDnsNewDomain.getExample();
        IntServerDnsNewDomain dnsNewDomain3 = new IntServerDnsNewDomain();
        IntServerDnsNewDomain dnsNewDomain4 = new IntServerDnsNewDomain();

        System.assert(dnsNewDomain1.equals(dnsNewDomain2));
        System.assert(dnsNewDomain3.equals(dnsNewDomain4));
        System.assertEquals(dnsNewDomain1.hashCode(), dnsNewDomain2.hashCode());
        System.assertEquals(dnsNewDomain3.hashCode(), dnsNewDomain4.hashCode());
    }
}
