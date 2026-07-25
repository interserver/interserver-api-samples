@isTest
private class IntServerServerOrderControlPanelTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerServerOrderControlPanel serverOrderControlPanel1 = IntServerServerOrderControlPanel.getExample();
        IntServerServerOrderControlPanel serverOrderControlPanel2 = serverOrderControlPanel1;
        IntServerServerOrderControlPanel serverOrderControlPanel3 = new IntServerServerOrderControlPanel();
        IntServerServerOrderControlPanel serverOrderControlPanel4 = serverOrderControlPanel3;

        System.assert(serverOrderControlPanel1.equals(serverOrderControlPanel2));
        System.assert(serverOrderControlPanel2.equals(serverOrderControlPanel1));
        System.assert(serverOrderControlPanel1.equals(serverOrderControlPanel1));
        System.assert(serverOrderControlPanel3.equals(serverOrderControlPanel4));
        System.assert(serverOrderControlPanel4.equals(serverOrderControlPanel3));
        System.assert(serverOrderControlPanel3.equals(serverOrderControlPanel3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerServerOrderControlPanel serverOrderControlPanel1 = IntServerServerOrderControlPanel.getExample();
        IntServerServerOrderControlPanel serverOrderControlPanel2 = IntServerServerOrderControlPanel.getExample();
        IntServerServerOrderControlPanel serverOrderControlPanel3 = new IntServerServerOrderControlPanel();
        IntServerServerOrderControlPanel serverOrderControlPanel4 = new IntServerServerOrderControlPanel();

        System.assert(serverOrderControlPanel1.equals(serverOrderControlPanel2));
        System.assert(serverOrderControlPanel2.equals(serverOrderControlPanel1));
        System.assert(serverOrderControlPanel3.equals(serverOrderControlPanel4));
        System.assert(serverOrderControlPanel4.equals(serverOrderControlPanel3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerServerOrderControlPanel serverOrderControlPanel1 = IntServerServerOrderControlPanel.getExample();
        IntServerServerOrderControlPanel serverOrderControlPanel2 = new IntServerServerOrderControlPanel();

        System.assertEquals(false, serverOrderControlPanel1.equals('foo'));
        System.assertEquals(false, serverOrderControlPanel2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerServerOrderControlPanel serverOrderControlPanel1 = IntServerServerOrderControlPanel.getExample();
        IntServerServerOrderControlPanel serverOrderControlPanel2 = new IntServerServerOrderControlPanel();
        IntServerServerOrderControlPanel serverOrderControlPanel3;

        System.assertEquals(false, serverOrderControlPanel1.equals(serverOrderControlPanel3));
        System.assertEquals(false, serverOrderControlPanel2.equals(serverOrderControlPanel3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerServerOrderControlPanel serverOrderControlPanel1 = IntServerServerOrderControlPanel.getExample();
        IntServerServerOrderControlPanel serverOrderControlPanel2 = new IntServerServerOrderControlPanel();

        System.assertEquals(serverOrderControlPanel1.hashCode(), serverOrderControlPanel1.hashCode());
        System.assertEquals(serverOrderControlPanel2.hashCode(), serverOrderControlPanel2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerServerOrderControlPanel serverOrderControlPanel1 = IntServerServerOrderControlPanel.getExample();
        IntServerServerOrderControlPanel serverOrderControlPanel2 = IntServerServerOrderControlPanel.getExample();
        IntServerServerOrderControlPanel serverOrderControlPanel3 = new IntServerServerOrderControlPanel();
        IntServerServerOrderControlPanel serverOrderControlPanel4 = new IntServerServerOrderControlPanel();

        System.assert(serverOrderControlPanel1.equals(serverOrderControlPanel2));
        System.assert(serverOrderControlPanel3.equals(serverOrderControlPanel4));
        System.assertEquals(serverOrderControlPanel1.hashCode(), serverOrderControlPanel2.hashCode());
        System.assertEquals(serverOrderControlPanel3.hashCode(), serverOrderControlPanel4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerServerOrderControlPanel serverOrderControlPanel = new IntServerServerOrderControlPanel();
        Map<String, String> x-property-mappings = serverOrderControlPanel.getx-property-mappings();
        System.assertEquals('shortDesc', x-property-mappings.get('short_desc'));
        System.assertEquals('longDesc', x-property-mappings.get('long_desc'));
        System.assertEquals('osType', x-property-mappings.get('os_type'));
        System.assertEquals('monthlyPrice', x-property-mappings.get('monthly_price'));
        System.assertEquals('priceDisplay', x-property-mappings.get('price_display'));
        System.assertEquals('monthlyPriceDisplay', x-property-mappings.get('monthly_price_display'));
    }

    @isTest
    private static void defaultValuesPopulated() {
        IntServerServerOrderControlPanel serverOrderControlPanel = new IntServerServerOrderControlPanel();
        System.assertEquals(new List<String>(), serverOrderControlPanel.types);
        System.assertEquals(null, serverOrderControlPanel.id);
        System.assertEquals(null, serverOrderControlPanel.price);
        System.assertEquals(null, serverOrderControlPanel.img);
        System.assertEquals(null, serverOrderControlPanel.shortDesc);
        System.assertEquals(null, serverOrderControlPanel.longDesc);
        System.assertEquals(null, serverOrderControlPanel.osType);
        System.assertEquals(null, serverOrderControlPanel.monthlyPrice);
        System.assertEquals(null, serverOrderControlPanel.priceDisplay);
        System.assertEquals(null, serverOrderControlPanel.monthlyPriceDisplay);
    }
}
