@isTest
private class IntServerDisableScrub400ResponseTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerDisableScrub400Response disableScrub400Response1 = IntServerDisableScrub400Response.getExample();
        IntServerDisableScrub400Response disableScrub400Response2 = disableScrub400Response1;
        IntServerDisableScrub400Response disableScrub400Response3 = new IntServerDisableScrub400Response();
        IntServerDisableScrub400Response disableScrub400Response4 = disableScrub400Response3;

        System.assert(disableScrub400Response1.equals(disableScrub400Response2));
        System.assert(disableScrub400Response2.equals(disableScrub400Response1));
        System.assert(disableScrub400Response1.equals(disableScrub400Response1));
        System.assert(disableScrub400Response3.equals(disableScrub400Response4));
        System.assert(disableScrub400Response4.equals(disableScrub400Response3));
        System.assert(disableScrub400Response3.equals(disableScrub400Response3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerDisableScrub400Response disableScrub400Response1 = IntServerDisableScrub400Response.getExample();
        IntServerDisableScrub400Response disableScrub400Response2 = IntServerDisableScrub400Response.getExample();
        IntServerDisableScrub400Response disableScrub400Response3 = new IntServerDisableScrub400Response();
        IntServerDisableScrub400Response disableScrub400Response4 = new IntServerDisableScrub400Response();

        System.assert(disableScrub400Response1.equals(disableScrub400Response2));
        System.assert(disableScrub400Response2.equals(disableScrub400Response1));
        System.assert(disableScrub400Response3.equals(disableScrub400Response4));
        System.assert(disableScrub400Response4.equals(disableScrub400Response3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerDisableScrub400Response disableScrub400Response1 = IntServerDisableScrub400Response.getExample();
        IntServerDisableScrub400Response disableScrub400Response2 = new IntServerDisableScrub400Response();

        System.assertEquals(false, disableScrub400Response1.equals('foo'));
        System.assertEquals(false, disableScrub400Response2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerDisableScrub400Response disableScrub400Response1 = IntServerDisableScrub400Response.getExample();
        IntServerDisableScrub400Response disableScrub400Response2 = new IntServerDisableScrub400Response();
        IntServerDisableScrub400Response disableScrub400Response3;

        System.assertEquals(false, disableScrub400Response1.equals(disableScrub400Response3));
        System.assertEquals(false, disableScrub400Response2.equals(disableScrub400Response3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerDisableScrub400Response disableScrub400Response1 = IntServerDisableScrub400Response.getExample();
        IntServerDisableScrub400Response disableScrub400Response2 = new IntServerDisableScrub400Response();

        System.assertEquals(disableScrub400Response1.hashCode(), disableScrub400Response1.hashCode());
        System.assertEquals(disableScrub400Response2.hashCode(), disableScrub400Response2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerDisableScrub400Response disableScrub400Response1 = IntServerDisableScrub400Response.getExample();
        IntServerDisableScrub400Response disableScrub400Response2 = IntServerDisableScrub400Response.getExample();
        IntServerDisableScrub400Response disableScrub400Response3 = new IntServerDisableScrub400Response();
        IntServerDisableScrub400Response disableScrub400Response4 = new IntServerDisableScrub400Response();

        System.assert(disableScrub400Response1.equals(disableScrub400Response2));
        System.assert(disableScrub400Response3.equals(disableScrub400Response4));
        System.assertEquals(disableScrub400Response1.hashCode(), disableScrub400Response2.hashCode());
        System.assertEquals(disableScrub400Response3.hashCode(), disableScrub400Response4.hashCode());
    }
}
