@isTest
private class IntServerTicketsCountArrayTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerTicketsCountArray ticketsCountArray1 = IntServerTicketsCountArray.getExample();
        IntServerTicketsCountArray ticketsCountArray2 = ticketsCountArray1;
        IntServerTicketsCountArray ticketsCountArray3 = new IntServerTicketsCountArray();
        IntServerTicketsCountArray ticketsCountArray4 = ticketsCountArray3;

        System.assert(ticketsCountArray1.equals(ticketsCountArray2));
        System.assert(ticketsCountArray2.equals(ticketsCountArray1));
        System.assert(ticketsCountArray1.equals(ticketsCountArray1));
        System.assert(ticketsCountArray3.equals(ticketsCountArray4));
        System.assert(ticketsCountArray4.equals(ticketsCountArray3));
        System.assert(ticketsCountArray3.equals(ticketsCountArray3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerTicketsCountArray ticketsCountArray1 = IntServerTicketsCountArray.getExample();
        IntServerTicketsCountArray ticketsCountArray2 = IntServerTicketsCountArray.getExample();
        IntServerTicketsCountArray ticketsCountArray3 = new IntServerTicketsCountArray();
        IntServerTicketsCountArray ticketsCountArray4 = new IntServerTicketsCountArray();

        System.assert(ticketsCountArray1.equals(ticketsCountArray2));
        System.assert(ticketsCountArray2.equals(ticketsCountArray1));
        System.assert(ticketsCountArray3.equals(ticketsCountArray4));
        System.assert(ticketsCountArray4.equals(ticketsCountArray3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerTicketsCountArray ticketsCountArray1 = IntServerTicketsCountArray.getExample();
        IntServerTicketsCountArray ticketsCountArray2 = new IntServerTicketsCountArray();

        System.assertEquals(false, ticketsCountArray1.equals('foo'));
        System.assertEquals(false, ticketsCountArray2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerTicketsCountArray ticketsCountArray1 = IntServerTicketsCountArray.getExample();
        IntServerTicketsCountArray ticketsCountArray2 = new IntServerTicketsCountArray();
        IntServerTicketsCountArray ticketsCountArray3;

        System.assertEquals(false, ticketsCountArray1.equals(ticketsCountArray3));
        System.assertEquals(false, ticketsCountArray2.equals(ticketsCountArray3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerTicketsCountArray ticketsCountArray1 = IntServerTicketsCountArray.getExample();
        IntServerTicketsCountArray ticketsCountArray2 = new IntServerTicketsCountArray();

        System.assertEquals(ticketsCountArray1.hashCode(), ticketsCountArray1.hashCode());
        System.assertEquals(ticketsCountArray2.hashCode(), ticketsCountArray2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerTicketsCountArray ticketsCountArray1 = IntServerTicketsCountArray.getExample();
        IntServerTicketsCountArray ticketsCountArray2 = IntServerTicketsCountArray.getExample();
        IntServerTicketsCountArray ticketsCountArray3 = new IntServerTicketsCountArray();
        IntServerTicketsCountArray ticketsCountArray4 = new IntServerTicketsCountArray();

        System.assert(ticketsCountArray1.equals(ticketsCountArray2));
        System.assert(ticketsCountArray3.equals(ticketsCountArray4));
        System.assertEquals(ticketsCountArray1.hashCode(), ticketsCountArray2.hashCode());
        System.assertEquals(ticketsCountArray3.hashCode(), ticketsCountArray4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerTicketsCountArray ticketsCountArray = new IntServerTicketsCountArray();
        Map<String, String> x-property-mappings = ticketsCountArray.getx-property-mappings();
        System.assertEquals('open', x-property-mappings.get('Open'));
        System.assertEquals('onHold', x-property-mappings.get('On Hold'));
        System.assertEquals('closed', x-property-mappings.get('Closed'));
    }
}
