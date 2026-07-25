@isTest
private class IntServerServiceTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerService service1 = IntServerService.getExample();
        IntServerService service2 = service1;
        IntServerService service3 = new IntServerService();
        IntServerService service4 = service3;

        System.assert(service1.equals(service2));
        System.assert(service2.equals(service1));
        System.assert(service1.equals(service1));
        System.assert(service3.equals(service4));
        System.assert(service4.equals(service3));
        System.assert(service3.equals(service3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerService service1 = IntServerService.getExample();
        IntServerService service2 = IntServerService.getExample();
        IntServerService service3 = new IntServerService();
        IntServerService service4 = new IntServerService();

        System.assert(service1.equals(service2));
        System.assert(service2.equals(service1));
        System.assert(service3.equals(service4));
        System.assert(service4.equals(service3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerService service1 = IntServerService.getExample();
        IntServerService service2 = new IntServerService();

        System.assertEquals(false, service1.equals('foo'));
        System.assertEquals(false, service2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerService service1 = IntServerService.getExample();
        IntServerService service2 = new IntServerService();
        IntServerService service3;

        System.assertEquals(false, service1.equals(service3));
        System.assertEquals(false, service2.equals(service3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerService service1 = IntServerService.getExample();
        IntServerService service2 = new IntServerService();

        System.assertEquals(service1.hashCode(), service1.hashCode());
        System.assertEquals(service2.hashCode(), service2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerService service1 = IntServerService.getExample();
        IntServerService service2 = IntServerService.getExample();
        IntServerService service3 = new IntServerService();
        IntServerService service4 = new IntServerService();

        System.assert(service1.equals(service2));
        System.assert(service3.equals(service4));
        System.assertEquals(service1.hashCode(), service2.hashCode());
        System.assertEquals(service3.hashCode(), service4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerService service = new IntServerService();
        Map<String, String> x-property-mappings = service.getx-property-mappings();
        System.assertEquals('servicesId', x-property-mappings.get('services_id'));
        System.assertEquals('servicesName', x-property-mappings.get('services_name'));
        System.assertEquals('servicesCost', x-property-mappings.get('services_cost'));
        System.assertEquals('servicesCurrency', x-property-mappings.get('services_currency'));
        System.assertEquals('servicesCategory', x-property-mappings.get('services_category'));
        System.assertEquals('servicesBuyable', x-property-mappings.get('services_buyable'));
        System.assertEquals('servicesType', x-property-mappings.get('services_type'));
        System.assertEquals('servicesField1', x-property-mappings.get('services_field1'));
        System.assertEquals('servicesField2', x-property-mappings.get('services_field2'));
        System.assertEquals('servicesModule', x-property-mappings.get('services_module'));
    }
}
