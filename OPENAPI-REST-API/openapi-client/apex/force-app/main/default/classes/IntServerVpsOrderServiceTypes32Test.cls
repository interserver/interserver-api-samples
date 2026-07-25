@isTest
private class IntServerVpsOrderServiceTypes32Test {
    @isTest
    private static void equalsSameInstance() {
        IntServerVpsOrderServiceTypes32 vpsOrderServiceTypes321 = IntServerVpsOrderServiceTypes32.getExample();
        IntServerVpsOrderServiceTypes32 vpsOrderServiceTypes322 = vpsOrderServiceTypes321;
        IntServerVpsOrderServiceTypes32 vpsOrderServiceTypes323 = new IntServerVpsOrderServiceTypes32();
        IntServerVpsOrderServiceTypes32 vpsOrderServiceTypes324 = vpsOrderServiceTypes323;

        System.assert(vpsOrderServiceTypes321.equals(vpsOrderServiceTypes322));
        System.assert(vpsOrderServiceTypes322.equals(vpsOrderServiceTypes321));
        System.assert(vpsOrderServiceTypes321.equals(vpsOrderServiceTypes321));
        System.assert(vpsOrderServiceTypes323.equals(vpsOrderServiceTypes324));
        System.assert(vpsOrderServiceTypes324.equals(vpsOrderServiceTypes323));
        System.assert(vpsOrderServiceTypes323.equals(vpsOrderServiceTypes323));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerVpsOrderServiceTypes32 vpsOrderServiceTypes321 = IntServerVpsOrderServiceTypes32.getExample();
        IntServerVpsOrderServiceTypes32 vpsOrderServiceTypes322 = IntServerVpsOrderServiceTypes32.getExample();
        IntServerVpsOrderServiceTypes32 vpsOrderServiceTypes323 = new IntServerVpsOrderServiceTypes32();
        IntServerVpsOrderServiceTypes32 vpsOrderServiceTypes324 = new IntServerVpsOrderServiceTypes32();

        System.assert(vpsOrderServiceTypes321.equals(vpsOrderServiceTypes322));
        System.assert(vpsOrderServiceTypes322.equals(vpsOrderServiceTypes321));
        System.assert(vpsOrderServiceTypes323.equals(vpsOrderServiceTypes324));
        System.assert(vpsOrderServiceTypes324.equals(vpsOrderServiceTypes323));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerVpsOrderServiceTypes32 vpsOrderServiceTypes321 = IntServerVpsOrderServiceTypes32.getExample();
        IntServerVpsOrderServiceTypes32 vpsOrderServiceTypes322 = new IntServerVpsOrderServiceTypes32();

        System.assertEquals(false, vpsOrderServiceTypes321.equals('foo'));
        System.assertEquals(false, vpsOrderServiceTypes322.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerVpsOrderServiceTypes32 vpsOrderServiceTypes321 = IntServerVpsOrderServiceTypes32.getExample();
        IntServerVpsOrderServiceTypes32 vpsOrderServiceTypes322 = new IntServerVpsOrderServiceTypes32();
        IntServerVpsOrderServiceTypes32 vpsOrderServiceTypes323;

        System.assertEquals(false, vpsOrderServiceTypes321.equals(vpsOrderServiceTypes323));
        System.assertEquals(false, vpsOrderServiceTypes322.equals(vpsOrderServiceTypes323));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerVpsOrderServiceTypes32 vpsOrderServiceTypes321 = IntServerVpsOrderServiceTypes32.getExample();
        IntServerVpsOrderServiceTypes32 vpsOrderServiceTypes322 = new IntServerVpsOrderServiceTypes32();

        System.assertEquals(vpsOrderServiceTypes321.hashCode(), vpsOrderServiceTypes321.hashCode());
        System.assertEquals(vpsOrderServiceTypes322.hashCode(), vpsOrderServiceTypes322.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerVpsOrderServiceTypes32 vpsOrderServiceTypes321 = IntServerVpsOrderServiceTypes32.getExample();
        IntServerVpsOrderServiceTypes32 vpsOrderServiceTypes322 = IntServerVpsOrderServiceTypes32.getExample();
        IntServerVpsOrderServiceTypes32 vpsOrderServiceTypes323 = new IntServerVpsOrderServiceTypes32();
        IntServerVpsOrderServiceTypes32 vpsOrderServiceTypes324 = new IntServerVpsOrderServiceTypes32();

        System.assert(vpsOrderServiceTypes321.equals(vpsOrderServiceTypes322));
        System.assert(vpsOrderServiceTypes323.equals(vpsOrderServiceTypes324));
        System.assertEquals(vpsOrderServiceTypes321.hashCode(), vpsOrderServiceTypes322.hashCode());
        System.assertEquals(vpsOrderServiceTypes323.hashCode(), vpsOrderServiceTypes324.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerVpsOrderServiceTypes32 vpsOrderServiceTypes32 = new IntServerVpsOrderServiceTypes32();
        Map<String, String> x-property-mappings = vpsOrderServiceTypes32.getx-property-mappings();
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
