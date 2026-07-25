@isTest
private class IntServerInitiatePayment200ResponseTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerInitiatePayment200Response initiatePayment200Response1 = IntServerInitiatePayment200Response.getExample();
        IntServerInitiatePayment200Response initiatePayment200Response2 = initiatePayment200Response1;
        IntServerInitiatePayment200Response initiatePayment200Response3 = new IntServerInitiatePayment200Response();
        IntServerInitiatePayment200Response initiatePayment200Response4 = initiatePayment200Response3;

        System.assert(initiatePayment200Response1.equals(initiatePayment200Response2));
        System.assert(initiatePayment200Response2.equals(initiatePayment200Response1));
        System.assert(initiatePayment200Response1.equals(initiatePayment200Response1));
        System.assert(initiatePayment200Response3.equals(initiatePayment200Response4));
        System.assert(initiatePayment200Response4.equals(initiatePayment200Response3));
        System.assert(initiatePayment200Response3.equals(initiatePayment200Response3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerInitiatePayment200Response initiatePayment200Response1 = IntServerInitiatePayment200Response.getExample();
        IntServerInitiatePayment200Response initiatePayment200Response2 = IntServerInitiatePayment200Response.getExample();
        IntServerInitiatePayment200Response initiatePayment200Response3 = new IntServerInitiatePayment200Response();
        IntServerInitiatePayment200Response initiatePayment200Response4 = new IntServerInitiatePayment200Response();

        System.assert(initiatePayment200Response1.equals(initiatePayment200Response2));
        System.assert(initiatePayment200Response2.equals(initiatePayment200Response1));
        System.assert(initiatePayment200Response3.equals(initiatePayment200Response4));
        System.assert(initiatePayment200Response4.equals(initiatePayment200Response3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerInitiatePayment200Response initiatePayment200Response1 = IntServerInitiatePayment200Response.getExample();
        IntServerInitiatePayment200Response initiatePayment200Response2 = new IntServerInitiatePayment200Response();

        System.assertEquals(false, initiatePayment200Response1.equals('foo'));
        System.assertEquals(false, initiatePayment200Response2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerInitiatePayment200Response initiatePayment200Response1 = IntServerInitiatePayment200Response.getExample();
        IntServerInitiatePayment200Response initiatePayment200Response2 = new IntServerInitiatePayment200Response();
        IntServerInitiatePayment200Response initiatePayment200Response3;

        System.assertEquals(false, initiatePayment200Response1.equals(initiatePayment200Response3));
        System.assertEquals(false, initiatePayment200Response2.equals(initiatePayment200Response3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerInitiatePayment200Response initiatePayment200Response1 = IntServerInitiatePayment200Response.getExample();
        IntServerInitiatePayment200Response initiatePayment200Response2 = new IntServerInitiatePayment200Response();

        System.assertEquals(initiatePayment200Response1.hashCode(), initiatePayment200Response1.hashCode());
        System.assertEquals(initiatePayment200Response2.hashCode(), initiatePayment200Response2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerInitiatePayment200Response initiatePayment200Response1 = IntServerInitiatePayment200Response.getExample();
        IntServerInitiatePayment200Response initiatePayment200Response2 = IntServerInitiatePayment200Response.getExample();
        IntServerInitiatePayment200Response initiatePayment200Response3 = new IntServerInitiatePayment200Response();
        IntServerInitiatePayment200Response initiatePayment200Response4 = new IntServerInitiatePayment200Response();

        System.assert(initiatePayment200Response1.equals(initiatePayment200Response2));
        System.assert(initiatePayment200Response3.equals(initiatePayment200Response4));
        System.assertEquals(initiatePayment200Response1.hashCode(), initiatePayment200Response2.hashCode());
        System.assertEquals(initiatePayment200Response3.hashCode(), initiatePayment200Response4.hashCode());
    }
}
