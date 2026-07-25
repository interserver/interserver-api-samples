@isTest
private class IntServerDomainOrderTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerDomainOrder domainOrder1 = IntServerDomainOrder.getExample();
        IntServerDomainOrder domainOrder2 = domainOrder1;
        IntServerDomainOrder domainOrder3 = new IntServerDomainOrder();
        IntServerDomainOrder domainOrder4 = domainOrder3;

        System.assert(domainOrder1.equals(domainOrder2));
        System.assert(domainOrder2.equals(domainOrder1));
        System.assert(domainOrder1.equals(domainOrder1));
        System.assert(domainOrder3.equals(domainOrder4));
        System.assert(domainOrder4.equals(domainOrder3));
        System.assert(domainOrder3.equals(domainOrder3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerDomainOrder domainOrder1 = IntServerDomainOrder.getExample();
        IntServerDomainOrder domainOrder2 = IntServerDomainOrder.getExample();
        IntServerDomainOrder domainOrder3 = new IntServerDomainOrder();
        IntServerDomainOrder domainOrder4 = new IntServerDomainOrder();

        System.assert(domainOrder1.equals(domainOrder2));
        System.assert(domainOrder2.equals(domainOrder1));
        System.assert(domainOrder3.equals(domainOrder4));
        System.assert(domainOrder4.equals(domainOrder3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerDomainOrder domainOrder1 = IntServerDomainOrder.getExample();
        IntServerDomainOrder domainOrder2 = new IntServerDomainOrder();

        System.assertEquals(false, domainOrder1.equals('foo'));
        System.assertEquals(false, domainOrder2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerDomainOrder domainOrder1 = IntServerDomainOrder.getExample();
        IntServerDomainOrder domainOrder2 = new IntServerDomainOrder();
        IntServerDomainOrder domainOrder3;

        System.assertEquals(false, domainOrder1.equals(domainOrder3));
        System.assertEquals(false, domainOrder2.equals(domainOrder3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerDomainOrder domainOrder1 = IntServerDomainOrder.getExample();
        IntServerDomainOrder domainOrder2 = new IntServerDomainOrder();

        System.assertEquals(domainOrder1.hashCode(), domainOrder1.hashCode());
        System.assertEquals(domainOrder2.hashCode(), domainOrder2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerDomainOrder domainOrder1 = IntServerDomainOrder.getExample();
        IntServerDomainOrder domainOrder2 = IntServerDomainOrder.getExample();
        IntServerDomainOrder domainOrder3 = new IntServerDomainOrder();
        IntServerDomainOrder domainOrder4 = new IntServerDomainOrder();

        System.assert(domainOrder1.equals(domainOrder2));
        System.assert(domainOrder3.equals(domainOrder4));
        System.assertEquals(domainOrder1.hashCode(), domainOrder2.hashCode());
        System.assertEquals(domainOrder3.hashCode(), domainOrder4.hashCode());
    }
}
