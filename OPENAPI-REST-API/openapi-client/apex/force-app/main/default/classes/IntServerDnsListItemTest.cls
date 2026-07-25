@isTest
private class IntServerDnsListItemTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerDnsListItem dnsListItem1 = IntServerDnsListItem.getExample();
        IntServerDnsListItem dnsListItem2 = dnsListItem1;
        IntServerDnsListItem dnsListItem3 = new IntServerDnsListItem();
        IntServerDnsListItem dnsListItem4 = dnsListItem3;

        System.assert(dnsListItem1.equals(dnsListItem2));
        System.assert(dnsListItem2.equals(dnsListItem1));
        System.assert(dnsListItem1.equals(dnsListItem1));
        System.assert(dnsListItem3.equals(dnsListItem4));
        System.assert(dnsListItem4.equals(dnsListItem3));
        System.assert(dnsListItem3.equals(dnsListItem3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerDnsListItem dnsListItem1 = IntServerDnsListItem.getExample();
        IntServerDnsListItem dnsListItem2 = IntServerDnsListItem.getExample();
        IntServerDnsListItem dnsListItem3 = new IntServerDnsListItem();
        IntServerDnsListItem dnsListItem4 = new IntServerDnsListItem();

        System.assert(dnsListItem1.equals(dnsListItem2));
        System.assert(dnsListItem2.equals(dnsListItem1));
        System.assert(dnsListItem3.equals(dnsListItem4));
        System.assert(dnsListItem4.equals(dnsListItem3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerDnsListItem dnsListItem1 = IntServerDnsListItem.getExample();
        IntServerDnsListItem dnsListItem2 = new IntServerDnsListItem();

        System.assertEquals(false, dnsListItem1.equals('foo'));
        System.assertEquals(false, dnsListItem2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerDnsListItem dnsListItem1 = IntServerDnsListItem.getExample();
        IntServerDnsListItem dnsListItem2 = new IntServerDnsListItem();
        IntServerDnsListItem dnsListItem3;

        System.assertEquals(false, dnsListItem1.equals(dnsListItem3));
        System.assertEquals(false, dnsListItem2.equals(dnsListItem3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerDnsListItem dnsListItem1 = IntServerDnsListItem.getExample();
        IntServerDnsListItem dnsListItem2 = new IntServerDnsListItem();

        System.assertEquals(dnsListItem1.hashCode(), dnsListItem1.hashCode());
        System.assertEquals(dnsListItem2.hashCode(), dnsListItem2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerDnsListItem dnsListItem1 = IntServerDnsListItem.getExample();
        IntServerDnsListItem dnsListItem2 = IntServerDnsListItem.getExample();
        IntServerDnsListItem dnsListItem3 = new IntServerDnsListItem();
        IntServerDnsListItem dnsListItem4 = new IntServerDnsListItem();

        System.assert(dnsListItem1.equals(dnsListItem2));
        System.assert(dnsListItem3.equals(dnsListItem4));
        System.assertEquals(dnsListItem1.hashCode(), dnsListItem2.hashCode());
        System.assertEquals(dnsListItem3.hashCode(), dnsListItem4.hashCode());
    }
}
