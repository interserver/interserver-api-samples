@isTest
private class IntServerEnableScrub200ResponseTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerEnableScrub200Response enableScrub200Response1 = IntServerEnableScrub200Response.getExample();
        IntServerEnableScrub200Response enableScrub200Response2 = enableScrub200Response1;
        IntServerEnableScrub200Response enableScrub200Response3 = new IntServerEnableScrub200Response();
        IntServerEnableScrub200Response enableScrub200Response4 = enableScrub200Response3;

        System.assert(enableScrub200Response1.equals(enableScrub200Response2));
        System.assert(enableScrub200Response2.equals(enableScrub200Response1));
        System.assert(enableScrub200Response1.equals(enableScrub200Response1));
        System.assert(enableScrub200Response3.equals(enableScrub200Response4));
        System.assert(enableScrub200Response4.equals(enableScrub200Response3));
        System.assert(enableScrub200Response3.equals(enableScrub200Response3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerEnableScrub200Response enableScrub200Response1 = IntServerEnableScrub200Response.getExample();
        IntServerEnableScrub200Response enableScrub200Response2 = IntServerEnableScrub200Response.getExample();
        IntServerEnableScrub200Response enableScrub200Response3 = new IntServerEnableScrub200Response();
        IntServerEnableScrub200Response enableScrub200Response4 = new IntServerEnableScrub200Response();

        System.assert(enableScrub200Response1.equals(enableScrub200Response2));
        System.assert(enableScrub200Response2.equals(enableScrub200Response1));
        System.assert(enableScrub200Response3.equals(enableScrub200Response4));
        System.assert(enableScrub200Response4.equals(enableScrub200Response3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerEnableScrub200Response enableScrub200Response1 = IntServerEnableScrub200Response.getExample();
        IntServerEnableScrub200Response enableScrub200Response2 = new IntServerEnableScrub200Response();

        System.assertEquals(false, enableScrub200Response1.equals('foo'));
        System.assertEquals(false, enableScrub200Response2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerEnableScrub200Response enableScrub200Response1 = IntServerEnableScrub200Response.getExample();
        IntServerEnableScrub200Response enableScrub200Response2 = new IntServerEnableScrub200Response();
        IntServerEnableScrub200Response enableScrub200Response3;

        System.assertEquals(false, enableScrub200Response1.equals(enableScrub200Response3));
        System.assertEquals(false, enableScrub200Response2.equals(enableScrub200Response3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerEnableScrub200Response enableScrub200Response1 = IntServerEnableScrub200Response.getExample();
        IntServerEnableScrub200Response enableScrub200Response2 = new IntServerEnableScrub200Response();

        System.assertEquals(enableScrub200Response1.hashCode(), enableScrub200Response1.hashCode());
        System.assertEquals(enableScrub200Response2.hashCode(), enableScrub200Response2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerEnableScrub200Response enableScrub200Response1 = IntServerEnableScrub200Response.getExample();
        IntServerEnableScrub200Response enableScrub200Response2 = IntServerEnableScrub200Response.getExample();
        IntServerEnableScrub200Response enableScrub200Response3 = new IntServerEnableScrub200Response();
        IntServerEnableScrub200Response enableScrub200Response4 = new IntServerEnableScrub200Response();

        System.assert(enableScrub200Response1.equals(enableScrub200Response2));
        System.assert(enableScrub200Response3.equals(enableScrub200Response4));
        System.assertEquals(enableScrub200Response1.hashCode(), enableScrub200Response2.hashCode());
        System.assertEquals(enableScrub200Response3.hashCode(), enableScrub200Response4.hashCode());
    }
}
