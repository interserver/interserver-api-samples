@isTest
private class IntServerServiceTypeTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerServiceType serviceType1 = IntServerServiceType.getExample();
        IntServerServiceType serviceType2 = serviceType1;
        IntServerServiceType serviceType3 = new IntServerServiceType();
        IntServerServiceType serviceType4 = serviceType3;

        System.assert(serviceType1.equals(serviceType2));
        System.assert(serviceType2.equals(serviceType1));
        System.assert(serviceType1.equals(serviceType1));
        System.assert(serviceType3.equals(serviceType4));
        System.assert(serviceType4.equals(serviceType3));
        System.assert(serviceType3.equals(serviceType3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerServiceType serviceType1 = IntServerServiceType.getExample();
        IntServerServiceType serviceType2 = IntServerServiceType.getExample();
        IntServerServiceType serviceType3 = new IntServerServiceType();
        IntServerServiceType serviceType4 = new IntServerServiceType();

        System.assert(serviceType1.equals(serviceType2));
        System.assert(serviceType2.equals(serviceType1));
        System.assert(serviceType3.equals(serviceType4));
        System.assert(serviceType4.equals(serviceType3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerServiceType serviceType1 = IntServerServiceType.getExample();
        IntServerServiceType serviceType2 = new IntServerServiceType();

        System.assertEquals(false, serviceType1.equals('foo'));
        System.assertEquals(false, serviceType2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerServiceType serviceType1 = IntServerServiceType.getExample();
        IntServerServiceType serviceType2 = new IntServerServiceType();
        IntServerServiceType serviceType3;

        System.assertEquals(false, serviceType1.equals(serviceType3));
        System.assertEquals(false, serviceType2.equals(serviceType3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerServiceType serviceType1 = IntServerServiceType.getExample();
        IntServerServiceType serviceType2 = new IntServerServiceType();

        System.assertEquals(serviceType1.hashCode(), serviceType1.hashCode());
        System.assertEquals(serviceType2.hashCode(), serviceType2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerServiceType serviceType1 = IntServerServiceType.getExample();
        IntServerServiceType serviceType2 = IntServerServiceType.getExample();
        IntServerServiceType serviceType3 = new IntServerServiceType();
        IntServerServiceType serviceType4 = new IntServerServiceType();

        System.assert(serviceType1.equals(serviceType2));
        System.assert(serviceType3.equals(serviceType4));
        System.assertEquals(serviceType1.hashCode(), serviceType2.hashCode());
        System.assertEquals(serviceType3.hashCode(), serviceType4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerServiceType serviceType = new IntServerServiceType();
        Map<String, String> x-property-mappings = serviceType.getx-property-mappings();
        System.assertEquals('stId', x-property-mappings.get('st_id'));
        System.assertEquals('stName', x-property-mappings.get('st_name'));
        System.assertEquals('stCategory', x-property-mappings.get('st_category'));
        System.assertEquals('stModule', x-property-mappings.get('st_module'));
    }
}
