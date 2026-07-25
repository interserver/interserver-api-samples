@isTest
private class IntServerPlaceScrubOrder201ResponseOTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerPlaceScrubOrder201ResponseO placeScrubOrder201ResponseOrderDetails1 = IntServerPlaceScrubOrder201ResponseO.getExample();
        IntServerPlaceScrubOrder201ResponseO placeScrubOrder201ResponseOrderDetails2 = placeScrubOrder201ResponseOrderDetails1;
        IntServerPlaceScrubOrder201ResponseO placeScrubOrder201ResponseOrderDetails3 = new IntServerPlaceScrubOrder201ResponseO();
        IntServerPlaceScrubOrder201ResponseO placeScrubOrder201ResponseOrderDetails4 = placeScrubOrder201ResponseOrderDetails3;

        System.assert(placeScrubOrder201ResponseOrderDetails1.equals(placeScrubOrder201ResponseOrderDetails2));
        System.assert(placeScrubOrder201ResponseOrderDetails2.equals(placeScrubOrder201ResponseOrderDetails1));
        System.assert(placeScrubOrder201ResponseOrderDetails1.equals(placeScrubOrder201ResponseOrderDetails1));
        System.assert(placeScrubOrder201ResponseOrderDetails3.equals(placeScrubOrder201ResponseOrderDetails4));
        System.assert(placeScrubOrder201ResponseOrderDetails4.equals(placeScrubOrder201ResponseOrderDetails3));
        System.assert(placeScrubOrder201ResponseOrderDetails3.equals(placeScrubOrder201ResponseOrderDetails3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerPlaceScrubOrder201ResponseO placeScrubOrder201ResponseOrderDetails1 = IntServerPlaceScrubOrder201ResponseO.getExample();
        IntServerPlaceScrubOrder201ResponseO placeScrubOrder201ResponseOrderDetails2 = IntServerPlaceScrubOrder201ResponseO.getExample();
        IntServerPlaceScrubOrder201ResponseO placeScrubOrder201ResponseOrderDetails3 = new IntServerPlaceScrubOrder201ResponseO();
        IntServerPlaceScrubOrder201ResponseO placeScrubOrder201ResponseOrderDetails4 = new IntServerPlaceScrubOrder201ResponseO();

        System.assert(placeScrubOrder201ResponseOrderDetails1.equals(placeScrubOrder201ResponseOrderDetails2));
        System.assert(placeScrubOrder201ResponseOrderDetails2.equals(placeScrubOrder201ResponseOrderDetails1));
        System.assert(placeScrubOrder201ResponseOrderDetails3.equals(placeScrubOrder201ResponseOrderDetails4));
        System.assert(placeScrubOrder201ResponseOrderDetails4.equals(placeScrubOrder201ResponseOrderDetails3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerPlaceScrubOrder201ResponseO placeScrubOrder201ResponseOrderDetails1 = IntServerPlaceScrubOrder201ResponseO.getExample();
        IntServerPlaceScrubOrder201ResponseO placeScrubOrder201ResponseOrderDetails2 = new IntServerPlaceScrubOrder201ResponseO();

        System.assertEquals(false, placeScrubOrder201ResponseOrderDetails1.equals('foo'));
        System.assertEquals(false, placeScrubOrder201ResponseOrderDetails2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerPlaceScrubOrder201ResponseO placeScrubOrder201ResponseOrderDetails1 = IntServerPlaceScrubOrder201ResponseO.getExample();
        IntServerPlaceScrubOrder201ResponseO placeScrubOrder201ResponseOrderDetails2 = new IntServerPlaceScrubOrder201ResponseO();
        IntServerPlaceScrubOrder201ResponseO placeScrubOrder201ResponseOrderDetails3;

        System.assertEquals(false, placeScrubOrder201ResponseOrderDetails1.equals(placeScrubOrder201ResponseOrderDetails3));
        System.assertEquals(false, placeScrubOrder201ResponseOrderDetails2.equals(placeScrubOrder201ResponseOrderDetails3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerPlaceScrubOrder201ResponseO placeScrubOrder201ResponseOrderDetails1 = IntServerPlaceScrubOrder201ResponseO.getExample();
        IntServerPlaceScrubOrder201ResponseO placeScrubOrder201ResponseOrderDetails2 = new IntServerPlaceScrubOrder201ResponseO();

        System.assertEquals(placeScrubOrder201ResponseOrderDetails1.hashCode(), placeScrubOrder201ResponseOrderDetails1.hashCode());
        System.assertEquals(placeScrubOrder201ResponseOrderDetails2.hashCode(), placeScrubOrder201ResponseOrderDetails2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerPlaceScrubOrder201ResponseO placeScrubOrder201ResponseOrderDetails1 = IntServerPlaceScrubOrder201ResponseO.getExample();
        IntServerPlaceScrubOrder201ResponseO placeScrubOrder201ResponseOrderDetails2 = IntServerPlaceScrubOrder201ResponseO.getExample();
        IntServerPlaceScrubOrder201ResponseO placeScrubOrder201ResponseOrderDetails3 = new IntServerPlaceScrubOrder201ResponseO();
        IntServerPlaceScrubOrder201ResponseO placeScrubOrder201ResponseOrderDetails4 = new IntServerPlaceScrubOrder201ResponseO();

        System.assert(placeScrubOrder201ResponseOrderDetails1.equals(placeScrubOrder201ResponseOrderDetails2));
        System.assert(placeScrubOrder201ResponseOrderDetails3.equals(placeScrubOrder201ResponseOrderDetails4));
        System.assertEquals(placeScrubOrder201ResponseOrderDetails1.hashCode(), placeScrubOrder201ResponseOrderDetails2.hashCode());
        System.assertEquals(placeScrubOrder201ResponseOrderDetails3.hashCode(), placeScrubOrder201ResponseOrderDetails4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerPlaceScrubOrder201ResponseO placeScrubOrder201ResponseOrderDetails = new IntServerPlaceScrubOrder201ResponseO();
        Map<String, String> x-property-mappings = placeScrubOrder201ResponseOrderDetails.getx-property-mappings();
        System.assertEquals('totalCost', x-property-mappings.get('total_cost'));
        System.assertEquals('serviceId', x-property-mappings.get('service_id'));
        System.assertEquals('invoiceId', x-property-mappings.get('invoice_id'));
        System.assertEquals('invoiceDescription', x-property-mappings.get('invoice_description'));
        System.assertEquals('cjParams', x-property-mappings.get('cj_params'));
    }
}
