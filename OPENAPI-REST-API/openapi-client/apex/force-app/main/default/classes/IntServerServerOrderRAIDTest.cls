@isTest
private class IntServerServerOrderRAIDTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerServerOrderRAID serverOrderRAID1 = IntServerServerOrderRAID.getExample();
        IntServerServerOrderRAID serverOrderRAID2 = serverOrderRAID1;
        IntServerServerOrderRAID serverOrderRAID3 = new IntServerServerOrderRAID();
        IntServerServerOrderRAID serverOrderRAID4 = serverOrderRAID3;

        System.assert(serverOrderRAID1.equals(serverOrderRAID2));
        System.assert(serverOrderRAID2.equals(serverOrderRAID1));
        System.assert(serverOrderRAID1.equals(serverOrderRAID1));
        System.assert(serverOrderRAID3.equals(serverOrderRAID4));
        System.assert(serverOrderRAID4.equals(serverOrderRAID3));
        System.assert(serverOrderRAID3.equals(serverOrderRAID3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerServerOrderRAID serverOrderRAID1 = IntServerServerOrderRAID.getExample();
        IntServerServerOrderRAID serverOrderRAID2 = IntServerServerOrderRAID.getExample();
        IntServerServerOrderRAID serverOrderRAID3 = new IntServerServerOrderRAID();
        IntServerServerOrderRAID serverOrderRAID4 = new IntServerServerOrderRAID();

        System.assert(serverOrderRAID1.equals(serverOrderRAID2));
        System.assert(serverOrderRAID2.equals(serverOrderRAID1));
        System.assert(serverOrderRAID3.equals(serverOrderRAID4));
        System.assert(serverOrderRAID4.equals(serverOrderRAID3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerServerOrderRAID serverOrderRAID1 = IntServerServerOrderRAID.getExample();
        IntServerServerOrderRAID serverOrderRAID2 = new IntServerServerOrderRAID();

        System.assertEquals(false, serverOrderRAID1.equals('foo'));
        System.assertEquals(false, serverOrderRAID2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerServerOrderRAID serverOrderRAID1 = IntServerServerOrderRAID.getExample();
        IntServerServerOrderRAID serverOrderRAID2 = new IntServerServerOrderRAID();
        IntServerServerOrderRAID serverOrderRAID3;

        System.assertEquals(false, serverOrderRAID1.equals(serverOrderRAID3));
        System.assertEquals(false, serverOrderRAID2.equals(serverOrderRAID3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerServerOrderRAID serverOrderRAID1 = IntServerServerOrderRAID.getExample();
        IntServerServerOrderRAID serverOrderRAID2 = new IntServerServerOrderRAID();

        System.assertEquals(serverOrderRAID1.hashCode(), serverOrderRAID1.hashCode());
        System.assertEquals(serverOrderRAID2.hashCode(), serverOrderRAID2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerServerOrderRAID serverOrderRAID1 = IntServerServerOrderRAID.getExample();
        IntServerServerOrderRAID serverOrderRAID2 = IntServerServerOrderRAID.getExample();
        IntServerServerOrderRAID serverOrderRAID3 = new IntServerServerOrderRAID();
        IntServerServerOrderRAID serverOrderRAID4 = new IntServerServerOrderRAID();

        System.assert(serverOrderRAID1.equals(serverOrderRAID2));
        System.assert(serverOrderRAID3.equals(serverOrderRAID4));
        System.assertEquals(serverOrderRAID1.hashCode(), serverOrderRAID2.hashCode());
        System.assertEquals(serverOrderRAID3.hashCode(), serverOrderRAID4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerServerOrderRAID serverOrderRAID = new IntServerServerOrderRAID();
        Map<String, String> x-property-mappings = serverOrderRAID.getx-property-mappings();
        System.assertEquals('shortDesc', x-property-mappings.get('short_desc'));
        System.assertEquals('longDesc', x-property-mappings.get('long_desc'));
        System.assertEquals('monthlyPrice', x-property-mappings.get('monthly_price'));
        System.assertEquals('priceDisplay', x-property-mappings.get('price_display'));
        System.assertEquals('monthlyPriceDisplay', x-property-mappings.get('monthly_price_display'));
    }
}
