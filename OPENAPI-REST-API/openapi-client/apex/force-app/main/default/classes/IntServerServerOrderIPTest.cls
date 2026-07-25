@isTest
private class IntServerServerOrderIPTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerServerOrderIP serverOrderIP1 = IntServerServerOrderIP.getExample();
        IntServerServerOrderIP serverOrderIP2 = serverOrderIP1;
        IntServerServerOrderIP serverOrderIP3 = new IntServerServerOrderIP();
        IntServerServerOrderIP serverOrderIP4 = serverOrderIP3;

        System.assert(serverOrderIP1.equals(serverOrderIP2));
        System.assert(serverOrderIP2.equals(serverOrderIP1));
        System.assert(serverOrderIP1.equals(serverOrderIP1));
        System.assert(serverOrderIP3.equals(serverOrderIP4));
        System.assert(serverOrderIP4.equals(serverOrderIP3));
        System.assert(serverOrderIP3.equals(serverOrderIP3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerServerOrderIP serverOrderIP1 = IntServerServerOrderIP.getExample();
        IntServerServerOrderIP serverOrderIP2 = IntServerServerOrderIP.getExample();
        IntServerServerOrderIP serverOrderIP3 = new IntServerServerOrderIP();
        IntServerServerOrderIP serverOrderIP4 = new IntServerServerOrderIP();

        System.assert(serverOrderIP1.equals(serverOrderIP2));
        System.assert(serverOrderIP2.equals(serverOrderIP1));
        System.assert(serverOrderIP3.equals(serverOrderIP4));
        System.assert(serverOrderIP4.equals(serverOrderIP3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerServerOrderIP serverOrderIP1 = IntServerServerOrderIP.getExample();
        IntServerServerOrderIP serverOrderIP2 = new IntServerServerOrderIP();

        System.assertEquals(false, serverOrderIP1.equals('foo'));
        System.assertEquals(false, serverOrderIP2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerServerOrderIP serverOrderIP1 = IntServerServerOrderIP.getExample();
        IntServerServerOrderIP serverOrderIP2 = new IntServerServerOrderIP();
        IntServerServerOrderIP serverOrderIP3;

        System.assertEquals(false, serverOrderIP1.equals(serverOrderIP3));
        System.assertEquals(false, serverOrderIP2.equals(serverOrderIP3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerServerOrderIP serverOrderIP1 = IntServerServerOrderIP.getExample();
        IntServerServerOrderIP serverOrderIP2 = new IntServerServerOrderIP();

        System.assertEquals(serverOrderIP1.hashCode(), serverOrderIP1.hashCode());
        System.assertEquals(serverOrderIP2.hashCode(), serverOrderIP2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerServerOrderIP serverOrderIP1 = IntServerServerOrderIP.getExample();
        IntServerServerOrderIP serverOrderIP2 = IntServerServerOrderIP.getExample();
        IntServerServerOrderIP serverOrderIP3 = new IntServerServerOrderIP();
        IntServerServerOrderIP serverOrderIP4 = new IntServerServerOrderIP();

        System.assert(serverOrderIP1.equals(serverOrderIP2));
        System.assert(serverOrderIP3.equals(serverOrderIP4));
        System.assertEquals(serverOrderIP1.hashCode(), serverOrderIP2.hashCode());
        System.assertEquals(serverOrderIP3.hashCode(), serverOrderIP4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerServerOrderIP serverOrderIP = new IntServerServerOrderIP();
        Map<String, String> x-property-mappings = serverOrderIP.getx-property-mappings();
        System.assertEquals('shortDesc', x-property-mappings.get('short_desc'));
        System.assertEquals('longDesc', x-property-mappings.get('long_desc'));
        System.assertEquals('monthlyPrice', x-property-mappings.get('monthly_price'));
        System.assertEquals('priceDisplay', x-property-mappings.get('price_display'));
        System.assertEquals('monthlyPriceDisplay', x-property-mappings.get('monthly_price_display'));
    }
}
