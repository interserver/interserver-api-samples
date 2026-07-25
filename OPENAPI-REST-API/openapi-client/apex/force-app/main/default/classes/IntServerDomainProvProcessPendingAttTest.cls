@isTest
private class IntServerDomainProvProcessPendingAttTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerDomainProvProcessPendingAtt domainProvProcessPendingAttributes1 = IntServerDomainProvProcessPendingAtt.getExample();
        IntServerDomainProvProcessPendingAtt domainProvProcessPendingAttributes2 = domainProvProcessPendingAttributes1;
        IntServerDomainProvProcessPendingAtt domainProvProcessPendingAttributes3 = new IntServerDomainProvProcessPendingAtt();
        IntServerDomainProvProcessPendingAtt domainProvProcessPendingAttributes4 = domainProvProcessPendingAttributes3;

        System.assert(domainProvProcessPendingAttributes1.equals(domainProvProcessPendingAttributes2));
        System.assert(domainProvProcessPendingAttributes2.equals(domainProvProcessPendingAttributes1));
        System.assert(domainProvProcessPendingAttributes1.equals(domainProvProcessPendingAttributes1));
        System.assert(domainProvProcessPendingAttributes3.equals(domainProvProcessPendingAttributes4));
        System.assert(domainProvProcessPendingAttributes4.equals(domainProvProcessPendingAttributes3));
        System.assert(domainProvProcessPendingAttributes3.equals(domainProvProcessPendingAttributes3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerDomainProvProcessPendingAtt domainProvProcessPendingAttributes1 = IntServerDomainProvProcessPendingAtt.getExample();
        IntServerDomainProvProcessPendingAtt domainProvProcessPendingAttributes2 = IntServerDomainProvProcessPendingAtt.getExample();
        IntServerDomainProvProcessPendingAtt domainProvProcessPendingAttributes3 = new IntServerDomainProvProcessPendingAtt();
        IntServerDomainProvProcessPendingAtt domainProvProcessPendingAttributes4 = new IntServerDomainProvProcessPendingAtt();

        System.assert(domainProvProcessPendingAttributes1.equals(domainProvProcessPendingAttributes2));
        System.assert(domainProvProcessPendingAttributes2.equals(domainProvProcessPendingAttributes1));
        System.assert(domainProvProcessPendingAttributes3.equals(domainProvProcessPendingAttributes4));
        System.assert(domainProvProcessPendingAttributes4.equals(domainProvProcessPendingAttributes3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerDomainProvProcessPendingAtt domainProvProcessPendingAttributes1 = IntServerDomainProvProcessPendingAtt.getExample();
        IntServerDomainProvProcessPendingAtt domainProvProcessPendingAttributes2 = new IntServerDomainProvProcessPendingAtt();

        System.assertEquals(false, domainProvProcessPendingAttributes1.equals('foo'));
        System.assertEquals(false, domainProvProcessPendingAttributes2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerDomainProvProcessPendingAtt domainProvProcessPendingAttributes1 = IntServerDomainProvProcessPendingAtt.getExample();
        IntServerDomainProvProcessPendingAtt domainProvProcessPendingAttributes2 = new IntServerDomainProvProcessPendingAtt();
        IntServerDomainProvProcessPendingAtt domainProvProcessPendingAttributes3;

        System.assertEquals(false, domainProvProcessPendingAttributes1.equals(domainProvProcessPendingAttributes3));
        System.assertEquals(false, domainProvProcessPendingAttributes2.equals(domainProvProcessPendingAttributes3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerDomainProvProcessPendingAtt domainProvProcessPendingAttributes1 = IntServerDomainProvProcessPendingAtt.getExample();
        IntServerDomainProvProcessPendingAtt domainProvProcessPendingAttributes2 = new IntServerDomainProvProcessPendingAtt();

        System.assertEquals(domainProvProcessPendingAttributes1.hashCode(), domainProvProcessPendingAttributes1.hashCode());
        System.assertEquals(domainProvProcessPendingAttributes2.hashCode(), domainProvProcessPendingAttributes2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerDomainProvProcessPendingAtt domainProvProcessPendingAttributes1 = IntServerDomainProvProcessPendingAtt.getExample();
        IntServerDomainProvProcessPendingAtt domainProvProcessPendingAttributes2 = IntServerDomainProvProcessPendingAtt.getExample();
        IntServerDomainProvProcessPendingAtt domainProvProcessPendingAttributes3 = new IntServerDomainProvProcessPendingAtt();
        IntServerDomainProvProcessPendingAtt domainProvProcessPendingAttributes4 = new IntServerDomainProvProcessPendingAtt();

        System.assert(domainProvProcessPendingAttributes1.equals(domainProvProcessPendingAttributes2));
        System.assert(domainProvProcessPendingAttributes3.equals(domainProvProcessPendingAttributes4));
        System.assertEquals(domainProvProcessPendingAttributes1.hashCode(), domainProvProcessPendingAttributes2.hashCode());
        System.assertEquals(domainProvProcessPendingAttributes3.hashCode(), domainProvProcessPendingAttributes4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerDomainProvProcessPendingAtt domainProvProcessPendingAttributes = new IntServerDomainProvProcessPendingAtt();
        Map<String, String> x-property-mappings = domainProvProcessPendingAttributes.getx-property-mappings();
        System.assertEquals('orderId', x-property-mappings.get('order_id'));
        System.assertEquals('registrationExpirationDate', x-property-mappings.get('registration expiration date'));
        System.assertEquals('fAutoRenew', x-property-mappings.get('f_auto_renew'));
    }
}
