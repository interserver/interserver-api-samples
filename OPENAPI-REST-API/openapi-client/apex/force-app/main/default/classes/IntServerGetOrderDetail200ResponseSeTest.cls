@isTest
private class IntServerGetOrderDetail200ResponseSeTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerGetOrderDetail200ResponseSe getOrderDetail200ResponseServiceTypesInner1 = IntServerGetOrderDetail200ResponseSe.getExample();
        IntServerGetOrderDetail200ResponseSe getOrderDetail200ResponseServiceTypesInner2 = getOrderDetail200ResponseServiceTypesInner1;
        IntServerGetOrderDetail200ResponseSe getOrderDetail200ResponseServiceTypesInner3 = new IntServerGetOrderDetail200ResponseSe();
        IntServerGetOrderDetail200ResponseSe getOrderDetail200ResponseServiceTypesInner4 = getOrderDetail200ResponseServiceTypesInner3;

        System.assert(getOrderDetail200ResponseServiceTypesInner1.equals(getOrderDetail200ResponseServiceTypesInner2));
        System.assert(getOrderDetail200ResponseServiceTypesInner2.equals(getOrderDetail200ResponseServiceTypesInner1));
        System.assert(getOrderDetail200ResponseServiceTypesInner1.equals(getOrderDetail200ResponseServiceTypesInner1));
        System.assert(getOrderDetail200ResponseServiceTypesInner3.equals(getOrderDetail200ResponseServiceTypesInner4));
        System.assert(getOrderDetail200ResponseServiceTypesInner4.equals(getOrderDetail200ResponseServiceTypesInner3));
        System.assert(getOrderDetail200ResponseServiceTypesInner3.equals(getOrderDetail200ResponseServiceTypesInner3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerGetOrderDetail200ResponseSe getOrderDetail200ResponseServiceTypesInner1 = IntServerGetOrderDetail200ResponseSe.getExample();
        IntServerGetOrderDetail200ResponseSe getOrderDetail200ResponseServiceTypesInner2 = IntServerGetOrderDetail200ResponseSe.getExample();
        IntServerGetOrderDetail200ResponseSe getOrderDetail200ResponseServiceTypesInner3 = new IntServerGetOrderDetail200ResponseSe();
        IntServerGetOrderDetail200ResponseSe getOrderDetail200ResponseServiceTypesInner4 = new IntServerGetOrderDetail200ResponseSe();

        System.assert(getOrderDetail200ResponseServiceTypesInner1.equals(getOrderDetail200ResponseServiceTypesInner2));
        System.assert(getOrderDetail200ResponseServiceTypesInner2.equals(getOrderDetail200ResponseServiceTypesInner1));
        System.assert(getOrderDetail200ResponseServiceTypesInner3.equals(getOrderDetail200ResponseServiceTypesInner4));
        System.assert(getOrderDetail200ResponseServiceTypesInner4.equals(getOrderDetail200ResponseServiceTypesInner3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerGetOrderDetail200ResponseSe getOrderDetail200ResponseServiceTypesInner1 = IntServerGetOrderDetail200ResponseSe.getExample();
        IntServerGetOrderDetail200ResponseSe getOrderDetail200ResponseServiceTypesInner2 = new IntServerGetOrderDetail200ResponseSe();

        System.assertEquals(false, getOrderDetail200ResponseServiceTypesInner1.equals('foo'));
        System.assertEquals(false, getOrderDetail200ResponseServiceTypesInner2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerGetOrderDetail200ResponseSe getOrderDetail200ResponseServiceTypesInner1 = IntServerGetOrderDetail200ResponseSe.getExample();
        IntServerGetOrderDetail200ResponseSe getOrderDetail200ResponseServiceTypesInner2 = new IntServerGetOrderDetail200ResponseSe();
        IntServerGetOrderDetail200ResponseSe getOrderDetail200ResponseServiceTypesInner3;

        System.assertEquals(false, getOrderDetail200ResponseServiceTypesInner1.equals(getOrderDetail200ResponseServiceTypesInner3));
        System.assertEquals(false, getOrderDetail200ResponseServiceTypesInner2.equals(getOrderDetail200ResponseServiceTypesInner3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerGetOrderDetail200ResponseSe getOrderDetail200ResponseServiceTypesInner1 = IntServerGetOrderDetail200ResponseSe.getExample();
        IntServerGetOrderDetail200ResponseSe getOrderDetail200ResponseServiceTypesInner2 = new IntServerGetOrderDetail200ResponseSe();

        System.assertEquals(getOrderDetail200ResponseServiceTypesInner1.hashCode(), getOrderDetail200ResponseServiceTypesInner1.hashCode());
        System.assertEquals(getOrderDetail200ResponseServiceTypesInner2.hashCode(), getOrderDetail200ResponseServiceTypesInner2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerGetOrderDetail200ResponseSe getOrderDetail200ResponseServiceTypesInner1 = IntServerGetOrderDetail200ResponseSe.getExample();
        IntServerGetOrderDetail200ResponseSe getOrderDetail200ResponseServiceTypesInner2 = IntServerGetOrderDetail200ResponseSe.getExample();
        IntServerGetOrderDetail200ResponseSe getOrderDetail200ResponseServiceTypesInner3 = new IntServerGetOrderDetail200ResponseSe();
        IntServerGetOrderDetail200ResponseSe getOrderDetail200ResponseServiceTypesInner4 = new IntServerGetOrderDetail200ResponseSe();

        System.assert(getOrderDetail200ResponseServiceTypesInner1.equals(getOrderDetail200ResponseServiceTypesInner2));
        System.assert(getOrderDetail200ResponseServiceTypesInner3.equals(getOrderDetail200ResponseServiceTypesInner4));
        System.assertEquals(getOrderDetail200ResponseServiceTypesInner1.hashCode(), getOrderDetail200ResponseServiceTypesInner2.hashCode());
        System.assertEquals(getOrderDetail200ResponseServiceTypesInner3.hashCode(), getOrderDetail200ResponseServiceTypesInner4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerGetOrderDetail200ResponseSe getOrderDetail200ResponseServiceTypesInner = new IntServerGetOrderDetail200ResponseSe();
        Map<String, String> x-property-mappings = getOrderDetail200ResponseServiceTypesInner.getx-property-mappings();
        System.assertEquals('servicesId', x-property-mappings.get('services_id'));
        System.assertEquals('servicesName', x-property-mappings.get('services_name'));
        System.assertEquals('servicesCost', x-property-mappings.get('services_cost'));
        System.assertEquals('servicesField1', x-property-mappings.get('services_field1'));
        System.assertEquals('servicesField2', x-property-mappings.get('services_field2'));
        System.assertEquals('servicesModule', x-property-mappings.get('services_module'));
    }
}
