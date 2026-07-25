@isTest
private class IntServerServerOrderPostRequestHdTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerServerOrderPostRequestHd serverOrderPostRequestHd1 = IntServerServerOrderPostRequestHd.getExample();
        IntServerServerOrderPostRequestHd serverOrderPostRequestHd2 = serverOrderPostRequestHd1;
        IntServerServerOrderPostRequestHd serverOrderPostRequestHd3 = new IntServerServerOrderPostRequestHd();
        IntServerServerOrderPostRequestHd serverOrderPostRequestHd4 = serverOrderPostRequestHd3;

        System.assert(serverOrderPostRequestHd1.equals(serverOrderPostRequestHd2));
        System.assert(serverOrderPostRequestHd2.equals(serverOrderPostRequestHd1));
        System.assert(serverOrderPostRequestHd1.equals(serverOrderPostRequestHd1));
        System.assert(serverOrderPostRequestHd3.equals(serverOrderPostRequestHd4));
        System.assert(serverOrderPostRequestHd4.equals(serverOrderPostRequestHd3));
        System.assert(serverOrderPostRequestHd3.equals(serverOrderPostRequestHd3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerServerOrderPostRequestHd serverOrderPostRequestHd1 = IntServerServerOrderPostRequestHd.getExample();
        IntServerServerOrderPostRequestHd serverOrderPostRequestHd2 = IntServerServerOrderPostRequestHd.getExample();
        IntServerServerOrderPostRequestHd serverOrderPostRequestHd3 = new IntServerServerOrderPostRequestHd();
        IntServerServerOrderPostRequestHd serverOrderPostRequestHd4 = new IntServerServerOrderPostRequestHd();

        System.assert(serverOrderPostRequestHd1.equals(serverOrderPostRequestHd2));
        System.assert(serverOrderPostRequestHd2.equals(serverOrderPostRequestHd1));
        System.assert(serverOrderPostRequestHd3.equals(serverOrderPostRequestHd4));
        System.assert(serverOrderPostRequestHd4.equals(serverOrderPostRequestHd3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerServerOrderPostRequestHd serverOrderPostRequestHd1 = IntServerServerOrderPostRequestHd.getExample();
        IntServerServerOrderPostRequestHd serverOrderPostRequestHd2 = new IntServerServerOrderPostRequestHd();

        System.assertEquals(false, serverOrderPostRequestHd1.equals('foo'));
        System.assertEquals(false, serverOrderPostRequestHd2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerServerOrderPostRequestHd serverOrderPostRequestHd1 = IntServerServerOrderPostRequestHd.getExample();
        IntServerServerOrderPostRequestHd serverOrderPostRequestHd2 = new IntServerServerOrderPostRequestHd();
        IntServerServerOrderPostRequestHd serverOrderPostRequestHd3;

        System.assertEquals(false, serverOrderPostRequestHd1.equals(serverOrderPostRequestHd3));
        System.assertEquals(false, serverOrderPostRequestHd2.equals(serverOrderPostRequestHd3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerServerOrderPostRequestHd serverOrderPostRequestHd1 = IntServerServerOrderPostRequestHd.getExample();
        IntServerServerOrderPostRequestHd serverOrderPostRequestHd2 = new IntServerServerOrderPostRequestHd();

        System.assertEquals(serverOrderPostRequestHd1.hashCode(), serverOrderPostRequestHd1.hashCode());
        System.assertEquals(serverOrderPostRequestHd2.hashCode(), serverOrderPostRequestHd2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerServerOrderPostRequestHd serverOrderPostRequestHd1 = IntServerServerOrderPostRequestHd.getExample();
        IntServerServerOrderPostRequestHd serverOrderPostRequestHd2 = IntServerServerOrderPostRequestHd.getExample();
        IntServerServerOrderPostRequestHd serverOrderPostRequestHd3 = new IntServerServerOrderPostRequestHd();
        IntServerServerOrderPostRequestHd serverOrderPostRequestHd4 = new IntServerServerOrderPostRequestHd();

        System.assert(serverOrderPostRequestHd1.equals(serverOrderPostRequestHd2));
        System.assert(serverOrderPostRequestHd3.equals(serverOrderPostRequestHd4));
        System.assertEquals(serverOrderPostRequestHd1.hashCode(), serverOrderPostRequestHd2.hashCode());
        System.assertEquals(serverOrderPostRequestHd3.hashCode(), serverOrderPostRequestHd4.hashCode());
    }
}
