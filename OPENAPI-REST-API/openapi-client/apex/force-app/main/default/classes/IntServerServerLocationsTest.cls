@isTest
private class IntServerServerLocationsTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerServerLocations serverLocations1 = IntServerServerLocations.getExample();
        IntServerServerLocations serverLocations2 = serverLocations1;
        IntServerServerLocations serverLocations3 = new IntServerServerLocations();
        IntServerServerLocations serverLocations4 = serverLocations3;

        System.assert(serverLocations1.equals(serverLocations2));
        System.assert(serverLocations2.equals(serverLocations1));
        System.assert(serverLocations1.equals(serverLocations1));
        System.assert(serverLocations3.equals(serverLocations4));
        System.assert(serverLocations4.equals(serverLocations3));
        System.assert(serverLocations3.equals(serverLocations3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerServerLocations serverLocations1 = IntServerServerLocations.getExample();
        IntServerServerLocations serverLocations2 = IntServerServerLocations.getExample();
        IntServerServerLocations serverLocations3 = new IntServerServerLocations();
        IntServerServerLocations serverLocations4 = new IntServerServerLocations();

        System.assert(serverLocations1.equals(serverLocations2));
        System.assert(serverLocations2.equals(serverLocations1));
        System.assert(serverLocations3.equals(serverLocations4));
        System.assert(serverLocations4.equals(serverLocations3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerServerLocations serverLocations1 = IntServerServerLocations.getExample();
        IntServerServerLocations serverLocations2 = new IntServerServerLocations();

        System.assertEquals(false, serverLocations1.equals('foo'));
        System.assertEquals(false, serverLocations2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerServerLocations serverLocations1 = IntServerServerLocations.getExample();
        IntServerServerLocations serverLocations2 = new IntServerServerLocations();
        IntServerServerLocations serverLocations3;

        System.assertEquals(false, serverLocations1.equals(serverLocations3));
        System.assertEquals(false, serverLocations2.equals(serverLocations3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerServerLocations serverLocations1 = IntServerServerLocations.getExample();
        IntServerServerLocations serverLocations2 = new IntServerServerLocations();

        System.assertEquals(serverLocations1.hashCode(), serverLocations1.hashCode());
        System.assertEquals(serverLocations2.hashCode(), serverLocations2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerServerLocations serverLocations1 = IntServerServerLocations.getExample();
        IntServerServerLocations serverLocations2 = IntServerServerLocations.getExample();
        IntServerServerLocations serverLocations3 = new IntServerServerLocations();
        IntServerServerLocations serverLocations4 = new IntServerServerLocations();

        System.assert(serverLocations1.equals(serverLocations2));
        System.assert(serverLocations3.equals(serverLocations4));
        System.assertEquals(serverLocations1.hashCode(), serverLocations2.hashCode());
        System.assertEquals(serverLocations3.hashCode(), serverLocations4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerServerLocations serverLocations = new IntServerServerLocations();
        Map<String, String> x-property-mappings = serverLocations.getx-property-mappings();
        System.assertEquals('', x-property-mappings.get('1'));
    }
}
