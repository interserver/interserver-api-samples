@isTest
private class IntServerDomainOrderResponseAttributTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerDomainOrderResponseAttribut domainOrderResponseAttributes1 = IntServerDomainOrderResponseAttribut.getExample();
        IntServerDomainOrderResponseAttribut domainOrderResponseAttributes2 = domainOrderResponseAttributes1;
        IntServerDomainOrderResponseAttribut domainOrderResponseAttributes3 = new IntServerDomainOrderResponseAttribut();
        IntServerDomainOrderResponseAttribut domainOrderResponseAttributes4 = domainOrderResponseAttributes3;

        System.assert(domainOrderResponseAttributes1.equals(domainOrderResponseAttributes2));
        System.assert(domainOrderResponseAttributes2.equals(domainOrderResponseAttributes1));
        System.assert(domainOrderResponseAttributes1.equals(domainOrderResponseAttributes1));
        System.assert(domainOrderResponseAttributes3.equals(domainOrderResponseAttributes4));
        System.assert(domainOrderResponseAttributes4.equals(domainOrderResponseAttributes3));
        System.assert(domainOrderResponseAttributes3.equals(domainOrderResponseAttributes3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerDomainOrderResponseAttribut domainOrderResponseAttributes1 = IntServerDomainOrderResponseAttribut.getExample();
        IntServerDomainOrderResponseAttribut domainOrderResponseAttributes2 = IntServerDomainOrderResponseAttribut.getExample();
        IntServerDomainOrderResponseAttribut domainOrderResponseAttributes3 = new IntServerDomainOrderResponseAttribut();
        IntServerDomainOrderResponseAttribut domainOrderResponseAttributes4 = new IntServerDomainOrderResponseAttribut();

        System.assert(domainOrderResponseAttributes1.equals(domainOrderResponseAttributes2));
        System.assert(domainOrderResponseAttributes2.equals(domainOrderResponseAttributes1));
        System.assert(domainOrderResponseAttributes3.equals(domainOrderResponseAttributes4));
        System.assert(domainOrderResponseAttributes4.equals(domainOrderResponseAttributes3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerDomainOrderResponseAttribut domainOrderResponseAttributes1 = IntServerDomainOrderResponseAttribut.getExample();
        IntServerDomainOrderResponseAttribut domainOrderResponseAttributes2 = new IntServerDomainOrderResponseAttribut();

        System.assertEquals(false, domainOrderResponseAttributes1.equals('foo'));
        System.assertEquals(false, domainOrderResponseAttributes2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerDomainOrderResponseAttribut domainOrderResponseAttributes1 = IntServerDomainOrderResponseAttribut.getExample();
        IntServerDomainOrderResponseAttribut domainOrderResponseAttributes2 = new IntServerDomainOrderResponseAttribut();
        IntServerDomainOrderResponseAttribut domainOrderResponseAttributes3;

        System.assertEquals(false, domainOrderResponseAttributes1.equals(domainOrderResponseAttributes3));
        System.assertEquals(false, domainOrderResponseAttributes2.equals(domainOrderResponseAttributes3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerDomainOrderResponseAttribut domainOrderResponseAttributes1 = IntServerDomainOrderResponseAttribut.getExample();
        IntServerDomainOrderResponseAttribut domainOrderResponseAttributes2 = new IntServerDomainOrderResponseAttribut();

        System.assertEquals(domainOrderResponseAttributes1.hashCode(), domainOrderResponseAttributes1.hashCode());
        System.assertEquals(domainOrderResponseAttributes2.hashCode(), domainOrderResponseAttributes2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerDomainOrderResponseAttribut domainOrderResponseAttributes1 = IntServerDomainOrderResponseAttribut.getExample();
        IntServerDomainOrderResponseAttribut domainOrderResponseAttributes2 = IntServerDomainOrderResponseAttribut.getExample();
        IntServerDomainOrderResponseAttribut domainOrderResponseAttributes3 = new IntServerDomainOrderResponseAttribut();
        IntServerDomainOrderResponseAttribut domainOrderResponseAttributes4 = new IntServerDomainOrderResponseAttribut();

        System.assert(domainOrderResponseAttributes1.equals(domainOrderResponseAttributes2));
        System.assert(domainOrderResponseAttributes3.equals(domainOrderResponseAttributes4));
        System.assertEquals(domainOrderResponseAttributes1.hashCode(), domainOrderResponseAttributes2.hashCode());
        System.assertEquals(domainOrderResponseAttributes3.hashCode(), domainOrderResponseAttributes4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerDomainOrderResponseAttribut domainOrderResponseAttributes = new IntServerDomainOrderResponseAttribut();
        Map<String, String> x-property-mappings = domainOrderResponseAttributes.getx-property-mappings();
        System.assertEquals('adminEmail', x-property-mappings.get('admin_email'));
    }
}
