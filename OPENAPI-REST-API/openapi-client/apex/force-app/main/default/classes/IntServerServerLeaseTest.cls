@isTest
private class IntServerServerLeaseTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerServerLease serverLease1 = IntServerServerLease.getExample();
        IntServerServerLease serverLease2 = serverLease1;
        IntServerServerLease serverLease3 = new IntServerServerLease();
        IntServerServerLease serverLease4 = serverLease3;

        System.assert(serverLease1.equals(serverLease2));
        System.assert(serverLease2.equals(serverLease1));
        System.assert(serverLease1.equals(serverLease1));
        System.assert(serverLease3.equals(serverLease4));
        System.assert(serverLease4.equals(serverLease3));
        System.assert(serverLease3.equals(serverLease3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerServerLease serverLease1 = IntServerServerLease.getExample();
        IntServerServerLease serverLease2 = IntServerServerLease.getExample();
        IntServerServerLease serverLease3 = new IntServerServerLease();
        IntServerServerLease serverLease4 = new IntServerServerLease();

        System.assert(serverLease1.equals(serverLease2));
        System.assert(serverLease2.equals(serverLease1));
        System.assert(serverLease3.equals(serverLease4));
        System.assert(serverLease4.equals(serverLease3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerServerLease serverLease1 = IntServerServerLease.getExample();
        IntServerServerLease serverLease2 = new IntServerServerLease();

        System.assertEquals(false, serverLease1.equals('foo'));
        System.assertEquals(false, serverLease2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerServerLease serverLease1 = IntServerServerLease.getExample();
        IntServerServerLease serverLease2 = new IntServerServerLease();
        IntServerServerLease serverLease3;

        System.assertEquals(false, serverLease1.equals(serverLease3));
        System.assertEquals(false, serverLease2.equals(serverLease3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerServerLease serverLease1 = IntServerServerLease.getExample();
        IntServerServerLease serverLease2 = new IntServerServerLease();

        System.assertEquals(serverLease1.hashCode(), serverLease1.hashCode());
        System.assertEquals(serverLease2.hashCode(), serverLease2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerServerLease serverLease1 = IntServerServerLease.getExample();
        IntServerServerLease serverLease2 = IntServerServerLease.getExample();
        IntServerServerLease serverLease3 = new IntServerServerLease();
        IntServerServerLease serverLease4 = new IntServerServerLease();

        System.assert(serverLease1.equals(serverLease2));
        System.assert(serverLease3.equals(serverLease4));
        System.assertEquals(serverLease1.hashCode(), serverLease2.hashCode());
        System.assertEquals(serverLease3.hashCode(), serverLease4.hashCode());
    }

    @isTest
    private static void maintainRenamedProperties() {
        IntServerServerLease serverLease = new IntServerServerLease();
        Map<String, String> x-property-mappings = serverLease.getx-property-mappings();
        System.assertEquals('r_group', x-property-mappings.get('group'));
    }
}
