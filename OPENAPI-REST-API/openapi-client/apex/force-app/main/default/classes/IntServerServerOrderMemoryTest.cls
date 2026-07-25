@isTest
private class IntServerServerOrderMemoryTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerServerOrderMemory serverOrderMemory1 = IntServerServerOrderMemory.getExample();
        IntServerServerOrderMemory serverOrderMemory2 = serverOrderMemory1;
        IntServerServerOrderMemory serverOrderMemory3 = new IntServerServerOrderMemory();
        IntServerServerOrderMemory serverOrderMemory4 = serverOrderMemory3;

        System.assert(serverOrderMemory1.equals(serverOrderMemory2));
        System.assert(serverOrderMemory2.equals(serverOrderMemory1));
        System.assert(serverOrderMemory1.equals(serverOrderMemory1));
        System.assert(serverOrderMemory3.equals(serverOrderMemory4));
        System.assert(serverOrderMemory4.equals(serverOrderMemory3));
        System.assert(serverOrderMemory3.equals(serverOrderMemory3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerServerOrderMemory serverOrderMemory1 = IntServerServerOrderMemory.getExample();
        IntServerServerOrderMemory serverOrderMemory2 = IntServerServerOrderMemory.getExample();
        IntServerServerOrderMemory serverOrderMemory3 = new IntServerServerOrderMemory();
        IntServerServerOrderMemory serverOrderMemory4 = new IntServerServerOrderMemory();

        System.assert(serverOrderMemory1.equals(serverOrderMemory2));
        System.assert(serverOrderMemory2.equals(serverOrderMemory1));
        System.assert(serverOrderMemory3.equals(serverOrderMemory4));
        System.assert(serverOrderMemory4.equals(serverOrderMemory3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerServerOrderMemory serverOrderMemory1 = IntServerServerOrderMemory.getExample();
        IntServerServerOrderMemory serverOrderMemory2 = new IntServerServerOrderMemory();

        System.assertEquals(false, serverOrderMemory1.equals('foo'));
        System.assertEquals(false, serverOrderMemory2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerServerOrderMemory serverOrderMemory1 = IntServerServerOrderMemory.getExample();
        IntServerServerOrderMemory serverOrderMemory2 = new IntServerServerOrderMemory();
        IntServerServerOrderMemory serverOrderMemory3;

        System.assertEquals(false, serverOrderMemory1.equals(serverOrderMemory3));
        System.assertEquals(false, serverOrderMemory2.equals(serverOrderMemory3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerServerOrderMemory serverOrderMemory1 = IntServerServerOrderMemory.getExample();
        IntServerServerOrderMemory serverOrderMemory2 = new IntServerServerOrderMemory();

        System.assertEquals(serverOrderMemory1.hashCode(), serverOrderMemory1.hashCode());
        System.assertEquals(serverOrderMemory2.hashCode(), serverOrderMemory2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerServerOrderMemory serverOrderMemory1 = IntServerServerOrderMemory.getExample();
        IntServerServerOrderMemory serverOrderMemory2 = IntServerServerOrderMemory.getExample();
        IntServerServerOrderMemory serverOrderMemory3 = new IntServerServerOrderMemory();
        IntServerServerOrderMemory serverOrderMemory4 = new IntServerServerOrderMemory();

        System.assert(serverOrderMemory1.equals(serverOrderMemory2));
        System.assert(serverOrderMemory3.equals(serverOrderMemory4));
        System.assertEquals(serverOrderMemory1.hashCode(), serverOrderMemory2.hashCode());
        System.assertEquals(serverOrderMemory3.hashCode(), serverOrderMemory4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerServerOrderMemory serverOrderMemory = new IntServerServerOrderMemory();
        Map<String, String> x-property-mappings = serverOrderMemory.getx-property-mappings();
        System.assertEquals('shortDesc', x-property-mappings.get('short_desc'));
        System.assertEquals('longDesc', x-property-mappings.get('long_desc'));
        System.assertEquals('monthlyPrice', x-property-mappings.get('monthly_price'));
        System.assertEquals('driveType', x-property-mappings.get('drive_type'));
        System.assertEquals('monthlyPriceDisplay', x-property-mappings.get('monthly_price_display'));
    }
}
