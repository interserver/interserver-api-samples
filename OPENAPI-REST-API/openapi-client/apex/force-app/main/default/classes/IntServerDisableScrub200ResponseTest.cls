@isTest
private class IntServerDisableScrub200ResponseTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerDisableScrub200Response disableScrub200Response1 = IntServerDisableScrub200Response.getExample();
        IntServerDisableScrub200Response disableScrub200Response2 = disableScrub200Response1;
        IntServerDisableScrub200Response disableScrub200Response3 = new IntServerDisableScrub200Response();
        IntServerDisableScrub200Response disableScrub200Response4 = disableScrub200Response3;

        System.assert(disableScrub200Response1.equals(disableScrub200Response2));
        System.assert(disableScrub200Response2.equals(disableScrub200Response1));
        System.assert(disableScrub200Response1.equals(disableScrub200Response1));
        System.assert(disableScrub200Response3.equals(disableScrub200Response4));
        System.assert(disableScrub200Response4.equals(disableScrub200Response3));
        System.assert(disableScrub200Response3.equals(disableScrub200Response3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerDisableScrub200Response disableScrub200Response1 = IntServerDisableScrub200Response.getExample();
        IntServerDisableScrub200Response disableScrub200Response2 = IntServerDisableScrub200Response.getExample();
        IntServerDisableScrub200Response disableScrub200Response3 = new IntServerDisableScrub200Response();
        IntServerDisableScrub200Response disableScrub200Response4 = new IntServerDisableScrub200Response();

        System.assert(disableScrub200Response1.equals(disableScrub200Response2));
        System.assert(disableScrub200Response2.equals(disableScrub200Response1));
        System.assert(disableScrub200Response3.equals(disableScrub200Response4));
        System.assert(disableScrub200Response4.equals(disableScrub200Response3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerDisableScrub200Response disableScrub200Response1 = IntServerDisableScrub200Response.getExample();
        IntServerDisableScrub200Response disableScrub200Response2 = new IntServerDisableScrub200Response();

        System.assertEquals(false, disableScrub200Response1.equals('foo'));
        System.assertEquals(false, disableScrub200Response2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerDisableScrub200Response disableScrub200Response1 = IntServerDisableScrub200Response.getExample();
        IntServerDisableScrub200Response disableScrub200Response2 = new IntServerDisableScrub200Response();
        IntServerDisableScrub200Response disableScrub200Response3;

        System.assertEquals(false, disableScrub200Response1.equals(disableScrub200Response3));
        System.assertEquals(false, disableScrub200Response2.equals(disableScrub200Response3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerDisableScrub200Response disableScrub200Response1 = IntServerDisableScrub200Response.getExample();
        IntServerDisableScrub200Response disableScrub200Response2 = new IntServerDisableScrub200Response();

        System.assertEquals(disableScrub200Response1.hashCode(), disableScrub200Response1.hashCode());
        System.assertEquals(disableScrub200Response2.hashCode(), disableScrub200Response2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerDisableScrub200Response disableScrub200Response1 = IntServerDisableScrub200Response.getExample();
        IntServerDisableScrub200Response disableScrub200Response2 = IntServerDisableScrub200Response.getExample();
        IntServerDisableScrub200Response disableScrub200Response3 = new IntServerDisableScrub200Response();
        IntServerDisableScrub200Response disableScrub200Response4 = new IntServerDisableScrub200Response();

        System.assert(disableScrub200Response1.equals(disableScrub200Response2));
        System.assert(disableScrub200Response3.equals(disableScrub200Response4));
        System.assertEquals(disableScrub200Response1.hashCode(), disableScrub200Response2.hashCode());
        System.assertEquals(disableScrub200Response3.hashCode(), disableScrub200Response4.hashCode());
    }
}
