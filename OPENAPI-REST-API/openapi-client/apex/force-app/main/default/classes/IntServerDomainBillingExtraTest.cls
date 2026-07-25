@isTest
private class IntServerDomainBillingExtraTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerDomainBillingExtra domainBillingExtra1 = IntServerDomainBillingExtra.getExample();
        IntServerDomainBillingExtra domainBillingExtra2 = domainBillingExtra1;
        IntServerDomainBillingExtra domainBillingExtra3 = new IntServerDomainBillingExtra();
        IntServerDomainBillingExtra domainBillingExtra4 = domainBillingExtra3;

        System.assert(domainBillingExtra1.equals(domainBillingExtra2));
        System.assert(domainBillingExtra2.equals(domainBillingExtra1));
        System.assert(domainBillingExtra1.equals(domainBillingExtra1));
        System.assert(domainBillingExtra3.equals(domainBillingExtra4));
        System.assert(domainBillingExtra4.equals(domainBillingExtra3));
        System.assert(domainBillingExtra3.equals(domainBillingExtra3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerDomainBillingExtra domainBillingExtra1 = IntServerDomainBillingExtra.getExample();
        IntServerDomainBillingExtra domainBillingExtra2 = IntServerDomainBillingExtra.getExample();
        IntServerDomainBillingExtra domainBillingExtra3 = new IntServerDomainBillingExtra();
        IntServerDomainBillingExtra domainBillingExtra4 = new IntServerDomainBillingExtra();

        System.assert(domainBillingExtra1.equals(domainBillingExtra2));
        System.assert(domainBillingExtra2.equals(domainBillingExtra1));
        System.assert(domainBillingExtra3.equals(domainBillingExtra4));
        System.assert(domainBillingExtra4.equals(domainBillingExtra3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerDomainBillingExtra domainBillingExtra1 = IntServerDomainBillingExtra.getExample();
        IntServerDomainBillingExtra domainBillingExtra2 = new IntServerDomainBillingExtra();

        System.assertEquals(false, domainBillingExtra1.equals('foo'));
        System.assertEquals(false, domainBillingExtra2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerDomainBillingExtra domainBillingExtra1 = IntServerDomainBillingExtra.getExample();
        IntServerDomainBillingExtra domainBillingExtra2 = new IntServerDomainBillingExtra();
        IntServerDomainBillingExtra domainBillingExtra3;

        System.assertEquals(false, domainBillingExtra1.equals(domainBillingExtra3));
        System.assertEquals(false, domainBillingExtra2.equals(domainBillingExtra3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerDomainBillingExtra domainBillingExtra1 = IntServerDomainBillingExtra.getExample();
        IntServerDomainBillingExtra domainBillingExtra2 = new IntServerDomainBillingExtra();

        System.assertEquals(domainBillingExtra1.hashCode(), domainBillingExtra1.hashCode());
        System.assertEquals(domainBillingExtra2.hashCode(), domainBillingExtra2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerDomainBillingExtra domainBillingExtra1 = IntServerDomainBillingExtra.getExample();
        IntServerDomainBillingExtra domainBillingExtra2 = IntServerDomainBillingExtra.getExample();
        IntServerDomainBillingExtra domainBillingExtra3 = new IntServerDomainBillingExtra();
        IntServerDomainBillingExtra domainBillingExtra4 = new IntServerDomainBillingExtra();

        System.assert(domainBillingExtra1.equals(domainBillingExtra2));
        System.assert(domainBillingExtra3.equals(domainBillingExtra4));
        System.assertEquals(domainBillingExtra1.hashCode(), domainBillingExtra2.hashCode());
        System.assertEquals(domainBillingExtra3.hashCode(), domainBillingExtra4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerDomainBillingExtra domainBillingExtra = new IntServerDomainBillingExtra();
        Map<String, String> x-property-mappings = domainBillingExtra.getx-property-mappings();
        System.assertEquals('orderId', x-property-mappings.get('order_id'));
        System.assertEquals('domainId', x-property-mappings.get('domain_id'));
    }
}
