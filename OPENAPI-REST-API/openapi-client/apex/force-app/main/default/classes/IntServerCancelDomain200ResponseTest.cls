@isTest
private class IntServerCancelDomain200ResponseTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerCancelDomain200Response cancelDomain200Response1 = IntServerCancelDomain200Response.getExample();
        IntServerCancelDomain200Response cancelDomain200Response2 = cancelDomain200Response1;
        IntServerCancelDomain200Response cancelDomain200Response3 = new IntServerCancelDomain200Response();
        IntServerCancelDomain200Response cancelDomain200Response4 = cancelDomain200Response3;

        System.assert(cancelDomain200Response1.equals(cancelDomain200Response2));
        System.assert(cancelDomain200Response2.equals(cancelDomain200Response1));
        System.assert(cancelDomain200Response1.equals(cancelDomain200Response1));
        System.assert(cancelDomain200Response3.equals(cancelDomain200Response4));
        System.assert(cancelDomain200Response4.equals(cancelDomain200Response3));
        System.assert(cancelDomain200Response3.equals(cancelDomain200Response3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerCancelDomain200Response cancelDomain200Response1 = IntServerCancelDomain200Response.getExample();
        IntServerCancelDomain200Response cancelDomain200Response2 = IntServerCancelDomain200Response.getExample();
        IntServerCancelDomain200Response cancelDomain200Response3 = new IntServerCancelDomain200Response();
        IntServerCancelDomain200Response cancelDomain200Response4 = new IntServerCancelDomain200Response();

        System.assert(cancelDomain200Response1.equals(cancelDomain200Response2));
        System.assert(cancelDomain200Response2.equals(cancelDomain200Response1));
        System.assert(cancelDomain200Response3.equals(cancelDomain200Response4));
        System.assert(cancelDomain200Response4.equals(cancelDomain200Response3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerCancelDomain200Response cancelDomain200Response1 = IntServerCancelDomain200Response.getExample();
        IntServerCancelDomain200Response cancelDomain200Response2 = new IntServerCancelDomain200Response();

        System.assertEquals(false, cancelDomain200Response1.equals('foo'));
        System.assertEquals(false, cancelDomain200Response2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerCancelDomain200Response cancelDomain200Response1 = IntServerCancelDomain200Response.getExample();
        IntServerCancelDomain200Response cancelDomain200Response2 = new IntServerCancelDomain200Response();
        IntServerCancelDomain200Response cancelDomain200Response3;

        System.assertEquals(false, cancelDomain200Response1.equals(cancelDomain200Response3));
        System.assertEquals(false, cancelDomain200Response2.equals(cancelDomain200Response3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerCancelDomain200Response cancelDomain200Response1 = IntServerCancelDomain200Response.getExample();
        IntServerCancelDomain200Response cancelDomain200Response2 = new IntServerCancelDomain200Response();

        System.assertEquals(cancelDomain200Response1.hashCode(), cancelDomain200Response1.hashCode());
        System.assertEquals(cancelDomain200Response2.hashCode(), cancelDomain200Response2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerCancelDomain200Response cancelDomain200Response1 = IntServerCancelDomain200Response.getExample();
        IntServerCancelDomain200Response cancelDomain200Response2 = IntServerCancelDomain200Response.getExample();
        IntServerCancelDomain200Response cancelDomain200Response3 = new IntServerCancelDomain200Response();
        IntServerCancelDomain200Response cancelDomain200Response4 = new IntServerCancelDomain200Response();

        System.assert(cancelDomain200Response1.equals(cancelDomain200Response2));
        System.assert(cancelDomain200Response3.equals(cancelDomain200Response4));
        System.assertEquals(cancelDomain200Response1.hashCode(), cancelDomain200Response2.hashCode());
        System.assertEquals(cancelDomain200Response3.hashCode(), cancelDomain200Response4.hashCode());
    }
}
