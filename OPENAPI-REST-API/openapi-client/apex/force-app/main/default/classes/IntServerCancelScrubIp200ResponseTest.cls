@isTest
private class IntServerCancelScrubIp200ResponseTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerCancelScrubIp200Response cancelScrubIp200Response1 = IntServerCancelScrubIp200Response.getExample();
        IntServerCancelScrubIp200Response cancelScrubIp200Response2 = cancelScrubIp200Response1;
        IntServerCancelScrubIp200Response cancelScrubIp200Response3 = new IntServerCancelScrubIp200Response();
        IntServerCancelScrubIp200Response cancelScrubIp200Response4 = cancelScrubIp200Response3;

        System.assert(cancelScrubIp200Response1.equals(cancelScrubIp200Response2));
        System.assert(cancelScrubIp200Response2.equals(cancelScrubIp200Response1));
        System.assert(cancelScrubIp200Response1.equals(cancelScrubIp200Response1));
        System.assert(cancelScrubIp200Response3.equals(cancelScrubIp200Response4));
        System.assert(cancelScrubIp200Response4.equals(cancelScrubIp200Response3));
        System.assert(cancelScrubIp200Response3.equals(cancelScrubIp200Response3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerCancelScrubIp200Response cancelScrubIp200Response1 = IntServerCancelScrubIp200Response.getExample();
        IntServerCancelScrubIp200Response cancelScrubIp200Response2 = IntServerCancelScrubIp200Response.getExample();
        IntServerCancelScrubIp200Response cancelScrubIp200Response3 = new IntServerCancelScrubIp200Response();
        IntServerCancelScrubIp200Response cancelScrubIp200Response4 = new IntServerCancelScrubIp200Response();

        System.assert(cancelScrubIp200Response1.equals(cancelScrubIp200Response2));
        System.assert(cancelScrubIp200Response2.equals(cancelScrubIp200Response1));
        System.assert(cancelScrubIp200Response3.equals(cancelScrubIp200Response4));
        System.assert(cancelScrubIp200Response4.equals(cancelScrubIp200Response3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerCancelScrubIp200Response cancelScrubIp200Response1 = IntServerCancelScrubIp200Response.getExample();
        IntServerCancelScrubIp200Response cancelScrubIp200Response2 = new IntServerCancelScrubIp200Response();

        System.assertEquals(false, cancelScrubIp200Response1.equals('foo'));
        System.assertEquals(false, cancelScrubIp200Response2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerCancelScrubIp200Response cancelScrubIp200Response1 = IntServerCancelScrubIp200Response.getExample();
        IntServerCancelScrubIp200Response cancelScrubIp200Response2 = new IntServerCancelScrubIp200Response();
        IntServerCancelScrubIp200Response cancelScrubIp200Response3;

        System.assertEquals(false, cancelScrubIp200Response1.equals(cancelScrubIp200Response3));
        System.assertEquals(false, cancelScrubIp200Response2.equals(cancelScrubIp200Response3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerCancelScrubIp200Response cancelScrubIp200Response1 = IntServerCancelScrubIp200Response.getExample();
        IntServerCancelScrubIp200Response cancelScrubIp200Response2 = new IntServerCancelScrubIp200Response();

        System.assertEquals(cancelScrubIp200Response1.hashCode(), cancelScrubIp200Response1.hashCode());
        System.assertEquals(cancelScrubIp200Response2.hashCode(), cancelScrubIp200Response2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerCancelScrubIp200Response cancelScrubIp200Response1 = IntServerCancelScrubIp200Response.getExample();
        IntServerCancelScrubIp200Response cancelScrubIp200Response2 = IntServerCancelScrubIp200Response.getExample();
        IntServerCancelScrubIp200Response cancelScrubIp200Response3 = new IntServerCancelScrubIp200Response();
        IntServerCancelScrubIp200Response cancelScrubIp200Response4 = new IntServerCancelScrubIp200Response();

        System.assert(cancelScrubIp200Response1.equals(cancelScrubIp200Response2));
        System.assert(cancelScrubIp200Response3.equals(cancelScrubIp200Response4));
        System.assertEquals(cancelScrubIp200Response1.hashCode(), cancelScrubIp200Response2.hashCode());
        System.assertEquals(cancelScrubIp200Response3.hashCode(), cancelScrubIp200Response4.hashCode());
    }
}
