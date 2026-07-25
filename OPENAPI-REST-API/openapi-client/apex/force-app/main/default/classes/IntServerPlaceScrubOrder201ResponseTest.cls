@isTest
private class IntServerPlaceScrubOrder201ResponseTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerPlaceScrubOrder201Response placeScrubOrder201Response1 = IntServerPlaceScrubOrder201Response.getExample();
        IntServerPlaceScrubOrder201Response placeScrubOrder201Response2 = placeScrubOrder201Response1;
        IntServerPlaceScrubOrder201Response placeScrubOrder201Response3 = new IntServerPlaceScrubOrder201Response();
        IntServerPlaceScrubOrder201Response placeScrubOrder201Response4 = placeScrubOrder201Response3;

        System.assert(placeScrubOrder201Response1.equals(placeScrubOrder201Response2));
        System.assert(placeScrubOrder201Response2.equals(placeScrubOrder201Response1));
        System.assert(placeScrubOrder201Response1.equals(placeScrubOrder201Response1));
        System.assert(placeScrubOrder201Response3.equals(placeScrubOrder201Response4));
        System.assert(placeScrubOrder201Response4.equals(placeScrubOrder201Response3));
        System.assert(placeScrubOrder201Response3.equals(placeScrubOrder201Response3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerPlaceScrubOrder201Response placeScrubOrder201Response1 = IntServerPlaceScrubOrder201Response.getExample();
        IntServerPlaceScrubOrder201Response placeScrubOrder201Response2 = IntServerPlaceScrubOrder201Response.getExample();
        IntServerPlaceScrubOrder201Response placeScrubOrder201Response3 = new IntServerPlaceScrubOrder201Response();
        IntServerPlaceScrubOrder201Response placeScrubOrder201Response4 = new IntServerPlaceScrubOrder201Response();

        System.assert(placeScrubOrder201Response1.equals(placeScrubOrder201Response2));
        System.assert(placeScrubOrder201Response2.equals(placeScrubOrder201Response1));
        System.assert(placeScrubOrder201Response3.equals(placeScrubOrder201Response4));
        System.assert(placeScrubOrder201Response4.equals(placeScrubOrder201Response3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerPlaceScrubOrder201Response placeScrubOrder201Response1 = IntServerPlaceScrubOrder201Response.getExample();
        IntServerPlaceScrubOrder201Response placeScrubOrder201Response2 = new IntServerPlaceScrubOrder201Response();

        System.assertEquals(false, placeScrubOrder201Response1.equals('foo'));
        System.assertEquals(false, placeScrubOrder201Response2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerPlaceScrubOrder201Response placeScrubOrder201Response1 = IntServerPlaceScrubOrder201Response.getExample();
        IntServerPlaceScrubOrder201Response placeScrubOrder201Response2 = new IntServerPlaceScrubOrder201Response();
        IntServerPlaceScrubOrder201Response placeScrubOrder201Response3;

        System.assertEquals(false, placeScrubOrder201Response1.equals(placeScrubOrder201Response3));
        System.assertEquals(false, placeScrubOrder201Response2.equals(placeScrubOrder201Response3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerPlaceScrubOrder201Response placeScrubOrder201Response1 = IntServerPlaceScrubOrder201Response.getExample();
        IntServerPlaceScrubOrder201Response placeScrubOrder201Response2 = new IntServerPlaceScrubOrder201Response();

        System.assertEquals(placeScrubOrder201Response1.hashCode(), placeScrubOrder201Response1.hashCode());
        System.assertEquals(placeScrubOrder201Response2.hashCode(), placeScrubOrder201Response2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerPlaceScrubOrder201Response placeScrubOrder201Response1 = IntServerPlaceScrubOrder201Response.getExample();
        IntServerPlaceScrubOrder201Response placeScrubOrder201Response2 = IntServerPlaceScrubOrder201Response.getExample();
        IntServerPlaceScrubOrder201Response placeScrubOrder201Response3 = new IntServerPlaceScrubOrder201Response();
        IntServerPlaceScrubOrder201Response placeScrubOrder201Response4 = new IntServerPlaceScrubOrder201Response();

        System.assert(placeScrubOrder201Response1.equals(placeScrubOrder201Response2));
        System.assert(placeScrubOrder201Response3.equals(placeScrubOrder201Response4));
        System.assertEquals(placeScrubOrder201Response1.hashCode(), placeScrubOrder201Response2.hashCode());
        System.assertEquals(placeScrubOrder201Response3.hashCode(), placeScrubOrder201Response4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerPlaceScrubOrder201Response placeScrubOrder201Response = new IntServerPlaceScrubOrder201Response();
        Map<String, String> x-property-mappings = placeScrubOrder201Response.getx-property-mappings();
        System.assertEquals('orderDetails', x-property-mappings.get('order_details'));
    }
}
