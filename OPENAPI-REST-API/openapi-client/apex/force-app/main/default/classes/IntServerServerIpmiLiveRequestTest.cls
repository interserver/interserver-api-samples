@isTest
private class IntServerServerIpmiLiveRequestTest {
    @isTest
    private static void equalsSameInstance() {
        IntServerServerIpmiLiveRequest serverIpmiLiveRequest1 = IntServerServerIpmiLiveRequest.getExample();
        IntServerServerIpmiLiveRequest serverIpmiLiveRequest2 = serverIpmiLiveRequest1;
        IntServerServerIpmiLiveRequest serverIpmiLiveRequest3 = new IntServerServerIpmiLiveRequest();
        IntServerServerIpmiLiveRequest serverIpmiLiveRequest4 = serverIpmiLiveRequest3;

        System.assert(serverIpmiLiveRequest1.equals(serverIpmiLiveRequest2));
        System.assert(serverIpmiLiveRequest2.equals(serverIpmiLiveRequest1));
        System.assert(serverIpmiLiveRequest1.equals(serverIpmiLiveRequest1));
        System.assert(serverIpmiLiveRequest3.equals(serverIpmiLiveRequest4));
        System.assert(serverIpmiLiveRequest4.equals(serverIpmiLiveRequest3));
        System.assert(serverIpmiLiveRequest3.equals(serverIpmiLiveRequest3));
    }

    @isTest
    private static void equalsIdenticalInstance() {
        IntServerServerIpmiLiveRequest serverIpmiLiveRequest1 = IntServerServerIpmiLiveRequest.getExample();
        IntServerServerIpmiLiveRequest serverIpmiLiveRequest2 = IntServerServerIpmiLiveRequest.getExample();
        IntServerServerIpmiLiveRequest serverIpmiLiveRequest3 = new IntServerServerIpmiLiveRequest();
        IntServerServerIpmiLiveRequest serverIpmiLiveRequest4 = new IntServerServerIpmiLiveRequest();

        System.assert(serverIpmiLiveRequest1.equals(serverIpmiLiveRequest2));
        System.assert(serverIpmiLiveRequest2.equals(serverIpmiLiveRequest1));
        System.assert(serverIpmiLiveRequest3.equals(serverIpmiLiveRequest4));
        System.assert(serverIpmiLiveRequest4.equals(serverIpmiLiveRequest3));
    }

    @isTest
    private static void notEqualsDifferentType() {
        IntServerServerIpmiLiveRequest serverIpmiLiveRequest1 = IntServerServerIpmiLiveRequest.getExample();
        IntServerServerIpmiLiveRequest serverIpmiLiveRequest2 = new IntServerServerIpmiLiveRequest();

        System.assertEquals(false, serverIpmiLiveRequest1.equals('foo'));
        System.assertEquals(false, serverIpmiLiveRequest2.equals('foo'));
    }

    @isTest
    private static void notEqualsNull() {
        IntServerServerIpmiLiveRequest serverIpmiLiveRequest1 = IntServerServerIpmiLiveRequest.getExample();
        IntServerServerIpmiLiveRequest serverIpmiLiveRequest2 = new IntServerServerIpmiLiveRequest();
        IntServerServerIpmiLiveRequest serverIpmiLiveRequest3;

        System.assertEquals(false, serverIpmiLiveRequest1.equals(serverIpmiLiveRequest3));
        System.assertEquals(false, serverIpmiLiveRequest2.equals(serverIpmiLiveRequest3));
    }

    @isTest
    private static void consistentHashCodeValue() {
        IntServerServerIpmiLiveRequest serverIpmiLiveRequest1 = IntServerServerIpmiLiveRequest.getExample();
        IntServerServerIpmiLiveRequest serverIpmiLiveRequest2 = new IntServerServerIpmiLiveRequest();

        System.assertEquals(serverIpmiLiveRequest1.hashCode(), serverIpmiLiveRequest1.hashCode());
        System.assertEquals(serverIpmiLiveRequest2.hashCode(), serverIpmiLiveRequest2.hashCode());
    }

    @isTest
    private static void equalInstancesHaveSameHashCode() {
        IntServerServerIpmiLiveRequest serverIpmiLiveRequest1 = IntServerServerIpmiLiveRequest.getExample();
        IntServerServerIpmiLiveRequest serverIpmiLiveRequest2 = IntServerServerIpmiLiveRequest.getExample();
        IntServerServerIpmiLiveRequest serverIpmiLiveRequest3 = new IntServerServerIpmiLiveRequest();
        IntServerServerIpmiLiveRequest serverIpmiLiveRequest4 = new IntServerServerIpmiLiveRequest();

        System.assert(serverIpmiLiveRequest1.equals(serverIpmiLiveRequest2));
        System.assert(serverIpmiLiveRequest3.equals(serverIpmiLiveRequest4));
        System.assertEquals(serverIpmiLiveRequest1.hashCode(), serverIpmiLiveRequest2.hashCode());
        System.assertEquals(serverIpmiLiveRequest3.hashCode(), serverIpmiLiveRequest4.hashCode());
    }
}
