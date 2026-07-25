@isTest
private class IntServerEnableScrub500ResponseTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerEnableScrub500Response enableScrub500Response1 = IntServerEnableScrub500Response.getExample();
        IntServerEnableScrub500Response enableScrub500Response2 = enableScrub500Response1;
        IntServerEnableScrub500Response enableScrub500Response3 = new IntServerEnableScrub500Response();
        IntServerEnableScrub500Response enableScrub500Response4 = enableScrub500Response3;

        System.assert(enableScrub500Response1.equals(enableScrub500Response2));
        System.assert(enableScrub500Response2.equals(enableScrub500Response1));
        System.assert(enableScrub500Response1.equals(enableScrub500Response1));
        System.assert(enableScrub500Response3.equals(enableScrub500Response4));
        System.assert(enableScrub500Response4.equals(enableScrub500Response3));
        System.assert(enableScrub500Response3.equals(enableScrub500Response3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerEnableScrub500Response enableScrub500Response1 = IntServerEnableScrub500Response.getExample();
        IntServerEnableScrub500Response enableScrub500Response2 = IntServerEnableScrub500Response.getExample();
        IntServerEnableScrub500Response enableScrub500Response3 = new IntServerEnableScrub500Response();
        IntServerEnableScrub500Response enableScrub500Response4 = new IntServerEnableScrub500Response();

        System.assert(enableScrub500Response1.equals(enableScrub500Response2));
        System.assert(enableScrub500Response2.equals(enableScrub500Response1));
        System.assert(enableScrub500Response3.equals(enableScrub500Response4));
        System.assert(enableScrub500Response4.equals(enableScrub500Response3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerEnableScrub500Response enableScrub500Response1 = IntServerEnableScrub500Response.getExample();
        IntServerEnableScrub500Response enableScrub500Response2 = new IntServerEnableScrub500Response();

        System.assertEquals(false, enableScrub500Response1.equals('foo'));
        System.assertEquals(false, enableScrub500Response2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerEnableScrub500Response enableScrub500Response1 = IntServerEnableScrub500Response.getExample();
        IntServerEnableScrub500Response enableScrub500Response2 = new IntServerEnableScrub500Response();
        IntServerEnableScrub500Response enableScrub500Response3;

        System.assertEquals(false, enableScrub500Response1.equals(enableScrub500Response3));
        System.assertEquals(false, enableScrub500Response2.equals(enableScrub500Response3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerEnableScrub500Response enableScrub500Response1 = IntServerEnableScrub500Response.getExample();
        IntServerEnableScrub500Response enableScrub500Response2 = new IntServerEnableScrub500Response();

        System.assertEquals(enableScrub500Response1.hashCode(), enableScrub500Response1.hashCode());
        System.assertEquals(enableScrub500Response2.hashCode(), enableScrub500Response2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerEnableScrub500Response enableScrub500Response1 = IntServerEnableScrub500Response.getExample();
        IntServerEnableScrub500Response enableScrub500Response2 = IntServerEnableScrub500Response.getExample();
        IntServerEnableScrub500Response enableScrub500Response3 = new IntServerEnableScrub500Response();
        IntServerEnableScrub500Response enableScrub500Response4 = new IntServerEnableScrub500Response();

        System.assert(enableScrub500Response1.equals(enableScrub500Response2));
        System.assert(enableScrub500Response3.equals(enableScrub500Response4));
        System.assertEquals(enableScrub500Response1.hashCode(), enableScrub500Response2.hashCode());
        System.assertEquals(enableScrub500Response3.hashCode(), enableScrub500Response4.hashCode());
    }
}
