@isTest
private class IntServerServerOrderMemoryLi254Test {
    @isTest
    private static void equalsSameInstance() {
        IntServerServerOrderMemoryLi254 serverOrderMemoryLi2541 = IntServerServerOrderMemoryLi254.getExample();
        IntServerServerOrderMemoryLi254 serverOrderMemoryLi2542 = serverOrderMemoryLi2541;
        IntServerServerOrderMemoryLi254 serverOrderMemoryLi2543 = new IntServerServerOrderMemoryLi254();
        IntServerServerOrderMemoryLi254 serverOrderMemoryLi2544 = serverOrderMemoryLi2543;

        System.assert(serverOrderMemoryLi2541.equals(serverOrderMemoryLi2542));
        System.assert(serverOrderMemoryLi2542.equals(serverOrderMemoryLi2541));
        System.assert(serverOrderMemoryLi2541.equals(serverOrderMemoryLi2541));
        System.assert(serverOrderMemoryLi2543.equals(serverOrderMemoryLi2544));
        System.assert(serverOrderMemoryLi2544.equals(serverOrderMemoryLi2543));
        System.assert(serverOrderMemoryLi2543.equals(serverOrderMemoryLi2543));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerServerOrderMemoryLi254 serverOrderMemoryLi2541 = IntServerServerOrderMemoryLi254.getExample();
        IntServerServerOrderMemoryLi254 serverOrderMemoryLi2542 = IntServerServerOrderMemoryLi254.getExample();
        IntServerServerOrderMemoryLi254 serverOrderMemoryLi2543 = new IntServerServerOrderMemoryLi254();
        IntServerServerOrderMemoryLi254 serverOrderMemoryLi2544 = new IntServerServerOrderMemoryLi254();

        System.assert(serverOrderMemoryLi2541.equals(serverOrderMemoryLi2542));
        System.assert(serverOrderMemoryLi2542.equals(serverOrderMemoryLi2541));
        System.assert(serverOrderMemoryLi2543.equals(serverOrderMemoryLi2544));
        System.assert(serverOrderMemoryLi2544.equals(serverOrderMemoryLi2543));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerServerOrderMemoryLi254 serverOrderMemoryLi2541 = IntServerServerOrderMemoryLi254.getExample();
        IntServerServerOrderMemoryLi254 serverOrderMemoryLi2542 = new IntServerServerOrderMemoryLi254();

        System.assertEquals(false, serverOrderMemoryLi2541.equals('foo'));
        System.assertEquals(false, serverOrderMemoryLi2542.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerServerOrderMemoryLi254 serverOrderMemoryLi2541 = IntServerServerOrderMemoryLi254.getExample();
        IntServerServerOrderMemoryLi254 serverOrderMemoryLi2542 = new IntServerServerOrderMemoryLi254();
        IntServerServerOrderMemoryLi254 serverOrderMemoryLi2543;

        System.assertEquals(false, serverOrderMemoryLi2541.equals(serverOrderMemoryLi2543));
        System.assertEquals(false, serverOrderMemoryLi2542.equals(serverOrderMemoryLi2543));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerServerOrderMemoryLi254 serverOrderMemoryLi2541 = IntServerServerOrderMemoryLi254.getExample();
        IntServerServerOrderMemoryLi254 serverOrderMemoryLi2542 = new IntServerServerOrderMemoryLi254();

        System.assertEquals(serverOrderMemoryLi2541.hashCode(), serverOrderMemoryLi2541.hashCode());
        System.assertEquals(serverOrderMemoryLi2542.hashCode(), serverOrderMemoryLi2542.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerServerOrderMemoryLi254 serverOrderMemoryLi2541 = IntServerServerOrderMemoryLi254.getExample();
        IntServerServerOrderMemoryLi254 serverOrderMemoryLi2542 = IntServerServerOrderMemoryLi254.getExample();
        IntServerServerOrderMemoryLi254 serverOrderMemoryLi2543 = new IntServerServerOrderMemoryLi254();
        IntServerServerOrderMemoryLi254 serverOrderMemoryLi2544 = new IntServerServerOrderMemoryLi254();

        System.assert(serverOrderMemoryLi2541.equals(serverOrderMemoryLi2542));
        System.assert(serverOrderMemoryLi2543.equals(serverOrderMemoryLi2544));
        System.assertEquals(serverOrderMemoryLi2541.hashCode(), serverOrderMemoryLi2542.hashCode());
        System.assertEquals(serverOrderMemoryLi2543.hashCode(), serverOrderMemoryLi2544.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerServerOrderMemoryLi254 serverOrderMemoryLi254 = new IntServerServerOrderMemoryLi254();
        Map<String, String> x-property-mappings = serverOrderMemoryLi254.getx-property-mappings();
        System.assertEquals('', x-property-mappings.get('65'));
    }
}
