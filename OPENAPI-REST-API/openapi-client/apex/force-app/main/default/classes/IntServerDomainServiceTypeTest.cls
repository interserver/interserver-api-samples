@isTest
private class IntServerDomainServiceTypeTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerDomainServiceType domainServiceType1 = IntServerDomainServiceType.getExample();
        IntServerDomainServiceType domainServiceType2 = domainServiceType1;
        IntServerDomainServiceType domainServiceType3 = new IntServerDomainServiceType();
        IntServerDomainServiceType domainServiceType4 = domainServiceType3;

        System.assert(domainServiceType1.equals(domainServiceType2));
        System.assert(domainServiceType2.equals(domainServiceType1));
        System.assert(domainServiceType1.equals(domainServiceType1));
        System.assert(domainServiceType3.equals(domainServiceType4));
        System.assert(domainServiceType4.equals(domainServiceType3));
        System.assert(domainServiceType3.equals(domainServiceType3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerDomainServiceType domainServiceType1 = IntServerDomainServiceType.getExample();
        IntServerDomainServiceType domainServiceType2 = IntServerDomainServiceType.getExample();
        IntServerDomainServiceType domainServiceType3 = new IntServerDomainServiceType();
        IntServerDomainServiceType domainServiceType4 = new IntServerDomainServiceType();

        System.assert(domainServiceType1.equals(domainServiceType2));
        System.assert(domainServiceType2.equals(domainServiceType1));
        System.assert(domainServiceType3.equals(domainServiceType4));
        System.assert(domainServiceType4.equals(domainServiceType3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerDomainServiceType domainServiceType1 = IntServerDomainServiceType.getExample();
        IntServerDomainServiceType domainServiceType2 = new IntServerDomainServiceType();

        System.assertEquals(false, domainServiceType1.equals('foo'));
        System.assertEquals(false, domainServiceType2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerDomainServiceType domainServiceType1 = IntServerDomainServiceType.getExample();
        IntServerDomainServiceType domainServiceType2 = new IntServerDomainServiceType();
        IntServerDomainServiceType domainServiceType3;

        System.assertEquals(false, domainServiceType1.equals(domainServiceType3));
        System.assertEquals(false, domainServiceType2.equals(domainServiceType3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerDomainServiceType domainServiceType1 = IntServerDomainServiceType.getExample();
        IntServerDomainServiceType domainServiceType2 = new IntServerDomainServiceType();

        System.assertEquals(domainServiceType1.hashCode(), domainServiceType1.hashCode());
        System.assertEquals(domainServiceType2.hashCode(), domainServiceType2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerDomainServiceType domainServiceType1 = IntServerDomainServiceType.getExample();
        IntServerDomainServiceType domainServiceType2 = IntServerDomainServiceType.getExample();
        IntServerDomainServiceType domainServiceType3 = new IntServerDomainServiceType();
        IntServerDomainServiceType domainServiceType4 = new IntServerDomainServiceType();

        System.assert(domainServiceType1.equals(domainServiceType2));
        System.assert(domainServiceType3.equals(domainServiceType4));
        System.assertEquals(domainServiceType1.hashCode(), domainServiceType2.hashCode());
        System.assertEquals(domainServiceType3.hashCode(), domainServiceType4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerDomainServiceType domainServiceType = new IntServerDomainServiceType();
        Map<String, String> x-property-mappings = domainServiceType.getx-property-mappings();
        System.assertEquals('servicesId', x-property-mappings.get('services_id'));
        System.assertEquals('servicesName', x-property-mappings.get('services_name'));
        System.assertEquals('servicesCost', x-property-mappings.get('services_cost'));
        System.assertEquals('servicesCategory', x-property-mappings.get('services_category'));
        System.assertEquals('servicesBuyable', x-property-mappings.get('services_buyable'));
        System.assertEquals('servicesType', x-property-mappings.get('services_type'));
        System.assertEquals('servicesField1', x-property-mappings.get('services_field1'));
        System.assertEquals('servicesField2', x-property-mappings.get('services_field2'));
        System.assertEquals('servicesModule', x-property-mappings.get('services_module'));
    }
}
