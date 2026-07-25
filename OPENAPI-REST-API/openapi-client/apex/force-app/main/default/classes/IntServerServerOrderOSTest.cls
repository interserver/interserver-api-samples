@isTest
private class IntServerServerOrderOSTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerServerOrderOS serverOrderOS1 = IntServerServerOrderOS.getExample();
        IntServerServerOrderOS serverOrderOS2 = serverOrderOS1;
        IntServerServerOrderOS serverOrderOS3 = new IntServerServerOrderOS();
        IntServerServerOrderOS serverOrderOS4 = serverOrderOS3;

        System.assert(serverOrderOS1.equals(serverOrderOS2));
        System.assert(serverOrderOS2.equals(serverOrderOS1));
        System.assert(serverOrderOS1.equals(serverOrderOS1));
        System.assert(serverOrderOS3.equals(serverOrderOS4));
        System.assert(serverOrderOS4.equals(serverOrderOS3));
        System.assert(serverOrderOS3.equals(serverOrderOS3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerServerOrderOS serverOrderOS1 = IntServerServerOrderOS.getExample();
        IntServerServerOrderOS serverOrderOS2 = IntServerServerOrderOS.getExample();
        IntServerServerOrderOS serverOrderOS3 = new IntServerServerOrderOS();
        IntServerServerOrderOS serverOrderOS4 = new IntServerServerOrderOS();

        System.assert(serverOrderOS1.equals(serverOrderOS2));
        System.assert(serverOrderOS2.equals(serverOrderOS1));
        System.assert(serverOrderOS3.equals(serverOrderOS4));
        System.assert(serverOrderOS4.equals(serverOrderOS3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerServerOrderOS serverOrderOS1 = IntServerServerOrderOS.getExample();
        IntServerServerOrderOS serverOrderOS2 = new IntServerServerOrderOS();

        System.assertEquals(false, serverOrderOS1.equals('foo'));
        System.assertEquals(false, serverOrderOS2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerServerOrderOS serverOrderOS1 = IntServerServerOrderOS.getExample();
        IntServerServerOrderOS serverOrderOS2 = new IntServerServerOrderOS();
        IntServerServerOrderOS serverOrderOS3;

        System.assertEquals(false, serverOrderOS1.equals(serverOrderOS3));
        System.assertEquals(false, serverOrderOS2.equals(serverOrderOS3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerServerOrderOS serverOrderOS1 = IntServerServerOrderOS.getExample();
        IntServerServerOrderOS serverOrderOS2 = new IntServerServerOrderOS();

        System.assertEquals(serverOrderOS1.hashCode(), serverOrderOS1.hashCode());
        System.assertEquals(serverOrderOS2.hashCode(), serverOrderOS2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerServerOrderOS serverOrderOS1 = IntServerServerOrderOS.getExample();
        IntServerServerOrderOS serverOrderOS2 = IntServerServerOrderOS.getExample();
        IntServerServerOrderOS serverOrderOS3 = new IntServerServerOrderOS();
        IntServerServerOrderOS serverOrderOS4 = new IntServerServerOrderOS();

        System.assert(serverOrderOS1.equals(serverOrderOS2));
        System.assert(serverOrderOS3.equals(serverOrderOS4));
        System.assertEquals(serverOrderOS1.hashCode(), serverOrderOS2.hashCode());
        System.assertEquals(serverOrderOS3.hashCode(), serverOrderOS4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerServerOrderOS serverOrderOS = new IntServerServerOrderOS();
        Map<String, String> x-property-mappings = serverOrderOS.getx-property-mappings();
        System.assertEquals('shortDesc', x-property-mappings.get('short_desc'));
        System.assertEquals('longDesc', x-property-mappings.get('long_desc'));
        System.assertEquals('monthlyPrice', x-property-mappings.get('monthly_price'));
        System.assertEquals('priceDisplay', x-property-mappings.get('price_display'));
        System.assertEquals('monthlyPriceDisplay', x-property-mappings.get('monthly_price_display'));
    }
}
